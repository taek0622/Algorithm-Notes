//
//  17069.swift
//  BOJ17000To17999
//
//  Created by 김이안 on 4/14/26.
//

//  문제 링크: https://www.acmicpc.net/problem/17069
//  알고리즘 분류: 다이나믹 프로그래밍

import Shared

public struct BOJ17069: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69108KB, 시간: 8ms, 코드 길이: 920B
        let N = Int(readLine()!)!
        var map = Array(repeating: Array(repeating: true, count: N), count: N)
        var dp = Array(repeating: Array(repeating: Array(repeating: 0, count: N), count: N), count: 3)
        dp[0][0][1] = 1

        for row in 0..<N {
            map[row] = readLine()!.split(separator: " ").map { $0 == "0" }
        }

        for row in 0..<N {
            for col in 2..<N where map[row][col] {

                if map[row][col-1] {
                    dp[0][row][col] = dp[0][row][col-1]
                }

                if row == 0 { continue }

                if map[row][col-1] {
                    dp[0][row][col] += dp[1][row][col-1]
                }

                if map[row-1][col-1] && map[row-1][col] && map[row][col-1] {
                    dp[1][row][col] = dp[0][row-1][col-1] + dp[1][row-1][col-1] + dp[2][row-1][col-1]
                }

                if map[row-1][col] {
                    dp[2][row][col] = dp[1][row-1][col] + dp[2][row-1][col]
                }
            }
        }

        print(dp[0][N-1][N-1] + dp[1][N-1][N-1] + dp[2][N-1][N-1])
    }
}
