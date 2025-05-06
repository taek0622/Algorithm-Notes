//
//  3230.swift
//  BOJ03000To03999
//
//  Created by 김민택 on 5/6/25.
//

//  문제 링크: https://www.acmicpc.net/problem/3230
//  알고리즘 분류: 구현

import Shared

public struct BOJ3230: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69108KB, 시간: 8ms, 코드 길이: 788B
        let NM = readLine()!.split(separator: " ").map { Int($0)! }
        var players = Array(1...NM[0])
        players = playerRanks(players, NM[1]).reversed()
        playerRanks(players, 3).forEach { print($0) }

        func playerRanks(_ players: [Int], _ rankCount: Int) -> [Int] {
            var players = players
            var ranks = Array(repeating: 0, count: rankCount)

            for idx in players.indices {
                var rank = Int(readLine()!)!
                var player = players[idx]

                while rank <= ranks.count {
                    if ranks[rank-1] == 0 {
                        ranks[rank-1] = player
                        break
                    } else {
                        let tempPlayer = ranks[rank-1]
                        ranks[rank-1] = player
                        player = tempPlayer
                        rank += 1
                    }
                }
            }

            return ranks
        }
    }
}
