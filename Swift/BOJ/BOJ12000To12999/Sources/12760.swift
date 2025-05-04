//
//  12760.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 1/19/25.
//

//  문제 링크: https://www.acmicpc.net/problem/12760
//  알고리즘 분류: 구현, 정렬, 시뮬레이션

import Shared

public struct BOJ12760: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69112KB, 시간: 8ms, 코드 길이: 669B
        let NM = readLine()!.split(separator: " ").map { Int($0)! }
        var cards = Array(repeating: [Int](), count: NM[0])
        var players = Array(repeating: 0, count: NM[0])
        var roundMax = Array(repeating: 0, count: NM[1])

        for idx in 0..<NM[0] {
            cards[idx] = readLine()!.split(separator: " ").map { Int($0)! }.sorted()

            for num in 0..<NM[1] where roundMax[num] < cards[idx][num] {
                roundMax[num] = cards[idx][num]
            }
        }

        for num in 0..<NM[1] {
            for idx in 0..<NM[0] where cards[idx][num] == roundMax[num] {
                players[idx] += 1
            }
        }

        print(players.enumerated().filter { $0.element == players.max()! }.map { String($0.offset + 1) }.joined(separator: " "))
    }
}
