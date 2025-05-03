//
//  11049.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 3/6/24.
//

//  문제 링크: https://www.acmicpc.net/problem/11049
//  알고리즘 분류: 다이나믹 프로그래밍

import Shared

public struct BOJ11049: Solvable {
    public init() {}

    public func run() {
        // 메모리: 71088KB, 시간: 96ms, 코드 길이: 571B
        let N = Int(readLine()!)!
        var matrix = [(Int, Int)]()
        var dp = Array(repeating: Array(repeating: 0, count: N), count: N)

        for _ in 0..<N {
            let input = readLine()!.split(separator: " ").map { Int($0)! }
            matrix.append((input[0], input[1]))
        }

        for idx in 1..<N {
            for start in 0..<N-idx {
                let end = idx + start
                var count = Int.max

                for mid in start..<end {
                    count = min(count, dp[start][mid] + dp[mid+1][end] + matrix[start].0 * matrix[mid].1 * matrix[end].1)
                }

                dp[start][end] = count
            }
        }

        print(dp[0][N-1])
    }
}
