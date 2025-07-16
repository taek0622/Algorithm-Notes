//
//  5533.swift
//  BOJ05000To05999
//
//  Created by 김민택 on 7/16/25.
//

//  문제 링크: https://www.acmicpc.net/problem/5533
//  알고리즘 분류: 수학, 구현, 사칙연산

import Shared

public struct BOJ5533: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69108KB, 시간: 8ms, 코드 길이: 931B
        let N = Int(readLine()!)!
        var cards = Array(repeating: Array(repeating: 0, count: N), count: 3)
        var scores = Array(repeating: 0, count: N)

        for player in 0..<N {
            let input = readLine()!.split(separator: " ").map { Int($0)! }

            for round in 0...2 {
                cards[round][player] = input[round]
            }
        }

        for round in 0..<3 {
            var checked = Array(repeating: false, count: N)
            var duplicated = Array(repeating: false, count: N)

            for player in 0..<N where !checked[player] {
                checked[player] = true

                for otherPlayer in stride(from: player+1, to: N, by: 1) where cards[round][player] == cards[round][otherPlayer] {
                    checked[otherPlayer] = true
                    duplicated[player] = true
                    duplicated[otherPlayer] = true
                }

                if !duplicated[player] {
                    scores[player] += cards[round][player]
                }
            }
        }

        print(scores.map { String($0) }.joined(separator: "\n"))
    }
}
