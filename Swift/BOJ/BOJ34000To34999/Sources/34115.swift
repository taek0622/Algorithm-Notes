//
//  34115.swift
//  BOJ34000To34999
//
//  Created by 김민택 on 12/5/25.
//

//  문제 링크: https://www.acmicpc.net/problem/34115
//  알고리즘 분류: 구현, 브루트포스 알고리즘

import Shared

public struct BOJ34115: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69276KB, 시간: 8ms, 코드 길이: 383B
        let N = Int(readLine()!)!
        let cards = readLine()!.split(separator: " ").map { Int($0)! }
        var cardIdx = Array(repeating: (-1, -1), count: N)

        for idx in cards.indices {
            if cardIdx[cards[idx]-1].0 == -1 {
                cardIdx[cards[idx]-1].0 = idx
            } else if cardIdx[cards[idx]-1].1 == -1 {
                cardIdx[cards[idx]-1].1 = idx
            }
        }

        print(cardIdx.map { $0.1 - $0.0 - 1 }.max()!)
    }
}
