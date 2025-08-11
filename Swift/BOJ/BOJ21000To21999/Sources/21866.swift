//
//  21866.swift
//  BOJ21000To21999
//
//  Created by 김민택 on 8/11/25.
//

//  문제 링크: https://www.acmicpc.net/problem/21866
//  알고리즘 분류: 구현

import Shared

public struct BOJ21866: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69104KB, 시간: 8ms, 코드 길이: 296B
        let maxScore = [100, 100, 200, 200, 300, 300, 400, 400, 500]
        let score = readLine()!.split(separator: " ").map { Int($0)! }
        var coffee = "draw"

        if score.reduce(0, +) < 100 {
            coffee = "none"
        }

        for idx in score.indices where maxScore[idx] < score[idx] {
            coffee = "hacker"
        }

        print(coffee)
    }
}
