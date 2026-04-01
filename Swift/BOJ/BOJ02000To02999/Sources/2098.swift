//
//  2098.swift
//  BOJ02000To02999
//
//  Created by 김이안 on 4/1/26.
//

//  문제 링크: https://www.acmicpc.net/problem/2098
//  알고리즘 분류: 다이나믹 프로그래밍, 비트마스킹, 비트필드를 이용한 다이나믹 프로그래밍, 외판원 순회 문제

import Shared

public struct BOJ2098: Solvable {
    public init() {}

    public func run() {
        // 메모리: 80844KB, 시간: 132ms, 코드 길이: 773B
        let N = Int(readLine()!)!
        let INF = 16 * 1000000 + 1
        var W = Array(repeating: Array(repeating: 0, count: N), count: N)
        let maxRange = 1<<N
        var dp = Array(repeating: Array(repeating: INF, count: N), count: maxRange)
        dp[1<<0][0] = 0
        var minPath = INF

        for row in 0..<N {
            W[row] = readLine()!.split(separator: " ").map { Int($0)! }
        }

        for num in 0..<maxRange {
            for cur in 0..<N where num & (1<<cur) != 0 {
                for next in 0..<N where num & (1<<next) == 0 && W[cur][next] != 0 {
                    dp[num|(1<<next)][next] = min(dp[num][cur] + W[cur][next], dp[num|(1<<next)][next])
                }
            }

            if num == maxRange-1 {
                for city in 1..<N where W[city][0] != 0 {
                    minPath = min(dp[num][city] + W[city][0], minPath)
                }
            }
        }

        print(minPath)
    }
}
