//
//  14567.swift
//  BOJ14000To14999
//
//  Created by 김이안 on 4/10/26.
//

//  문제 링크: https://www.acmicpc.net/problem/14567
//  알고리즘 분류: 다이나믹 프로그래밍, 그래프 이론, 방향 비순환 그래프, 위상 정렬

import Shared

public struct BOJ14567: Solvable {
    public init() {}

    public func run() {
        // 메모리: 74856KB, 시간: 528ms, 코드 길이: 472B
        let NM = readLine()!.split(separator: " ").map { Int($0)! }
        var subject = Array(repeating: [Int](), count: NM[0])
        var semester = Array(repeating: 1, count: NM[0])

        for _ in 0..<NM[1] {
            let AB = readLine()!.split(separator: " ").map { Int($0)! - 1 }
            subject[AB[1]].append(AB[0])
        }

        for idx in 0..<NM[0] {
            for prev in subject[idx] {
                semester[idx] = max(semester[idx], semester[prev] + 1)
            }
        }

        print(semester.map { String($0) }.joined(separator: " "))
    }
}
