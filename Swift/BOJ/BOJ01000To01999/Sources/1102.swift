//
//  1102.swift
//  BOJ01000To01999
//
//  Created by 김이안 on 3/28/26.
//

//  문제 링크: https://www.acmicpc.net/problem/1102
//  알고리즘 분류: 다이나믹 프로그래밍, 비트마스킹, 비트필드를 이용한 다이나믹 프로그래밍

import Shared

public struct BOJ1102: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69624KB, 시간: 64ms, 코드 길이: 824B
        let N = Int(readLine()!)!
        var costs = Array(repeating: Array(repeating: 0, count: N), count: N)
        let maxNum = 1 << N

        var dp = Array(repeating: 1000, count: maxNum)

        for idx in 0..<N {
            costs[idx] = readLine()!.split(separator: " ").map { Int($0)! }
        }

        let turns = readLine()!.map { $0 == "Y" }
        let P = Int(readLine()!)!
        var initialNum = 0

        for idx in 0..<N where turns[idx] {
            initialNum += 1 << idx
        }

        dp[initialNum] = 0
        var minCost = 1000

        for num in 0..<maxNum {
            if dp[num] == 1000 { continue }

            if num.nonzeroBitCount >= P {
                minCost = min(minCost, dp[num])
            }

            for row in 0..<N where num & 1<<row != 0 {
                for col in 0..<N where num & 1<<col == 0 {
                    dp[num+(1<<col)] = min(dp[num] + costs[row][col], dp[num|(1<<col)])
                }
            }
        }

        print(minCost == 1000 ? -1 : minCost)
    }
}
