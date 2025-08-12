//
//  23348.swift
//  BOJ23000To23999
//
//  Created by 김민택 on 8/12/25.
//

//  문제 링크: https://www.acmicpc.net/problem/23348
//  알고리즘 분류: 수학, 구현, 사칙연산

import Shared

public struct BOJ23348: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69104KB, 시간: 12ms, 코드 길이: 361B
        let ABC = readLine()!.split(separator: " ").map { Int($0)! }
        let N = Int(readLine()!)!
        var maxScore = 0

        for _ in 0..<N {
            var score = 0

            for _ in 0..<3 {
                let abc = readLine()!.split(separator: " ").map { Int($0)! }
                score += abc[0] * ABC[0] + abc[1] * ABC[1] + abc[2] * ABC[2]
            }

            maxScore = max(maxScore, score)
        }

        print(maxScore)
    }
}
