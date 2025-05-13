//
//  2012.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/09/15.
//

//  문제 링크: https://www.acmicpc.net/problem/2012
//  알고리즘 분류: 그리디 알고리즘, 정렬

import Shared

public struct BOJ2012: Solvable {
    public init() {}

    public func run() {
        // 메모리: 75352KB, 시간: 284ms, 코드 길이: 212B
        let N = Int(readLine()!)!
        var score = 0
        var grade = [Int]()

        for _ in 0..<N {
            grade.append(Int(readLine()!)!)
        }

        grade.sort()

        for idx in grade.indices {
            score += abs((idx+1) - grade[idx])
        }

        print(score)
    }
}
