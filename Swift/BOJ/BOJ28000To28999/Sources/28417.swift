//
//  28417.swift
//  BOJ28000To28999
//
//  Created by 김민택 on 9/8/25.
//

//  문제 링크: https://www.acmicpc.net/problem/28417
//  알고리즘 분류: 수학, 구현, 정렬, 사칙연산

import Shared

public struct BOJ28417: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69108KB, 시간: 220ms, 코드 길이: 269B
        let N = Int(readLine()!)!
        var maxScore = 0

        for _ in 0..<N {
            let scores = readLine()!.split(separator: " ").map { Int($0)! }
            let trick = scores[2...6].sorted(by: >)
            maxScore = max(maxScore, max(scores[0], scores[1]) + trick[0] + trick[1])
        }

        print(maxScore)
    }
}
