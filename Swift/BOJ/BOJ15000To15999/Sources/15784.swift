//
//  15784.swift
//  BOJ15000To15999
//
//  Created by 김민택 on 8/30/25.
//

//  문제 링크: https://www.acmicpc.net/problem/15784
//  알고리즘 분류: 구현

import Shared

public struct BOJ15784: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69104KB, 시간: 244ms, 코드 길이: 392B
        let Nab = readLine()!.split(separator: " ").map { Int($0)! }
        var maxScore = 0
        var jinseo = 0

        for idx in 1...Nab[0] {
            let scores = readLine()!.split(separator: " ").map { Int($0)! }
            maxScore = max(maxScore, scores[Nab[2]-1])

            if idx == Nab[1] {
                maxScore = max(maxScore, scores.max()!)
                jinseo = scores[Nab[2]-1]
            }
        }

        print(jinseo < maxScore ? "ANGRY" : "HAPPY")
    }
}
