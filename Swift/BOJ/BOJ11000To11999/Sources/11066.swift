//
//  11066.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 3/10/24.
//

//  문제 링크: https://www.acmicpc.net/problem/11066
//  알고리즘 분류: 다이나믹 프로그래밍

class BOJ11066: Solvable {
    func run() {
        // 메모리: 71100KB, 시간: 540ms, 코드 길이: 646B
        let T = Int(readLine()!)!

        for _ in 0..<T {
            let K = Int(readLine()!)!
            let C = readLine()!.split(separator: " ").map { Int($0)! }
            var dp = Array(repeating: Array(repeating: 0, count: K+1), count: K+1)
            var sum = Array(repeating: 0, count: K+1)

            for idx in 1...K {
                sum[idx] = sum[idx-1] + C[idx-1]
            }

            for idx in 1..<K {
                for row in 1...K-idx {
                    var col = row + idx
                    dp[row][col] = 1000000000

                    for mid in row..<col {
                        dp[row][col] = min(dp[row][col], dp[row][mid] + dp[mid+1][col] + sum[col] - sum[row-1])
                    }
                }
            }

            print(dp[1][K])
        }
    }
}
