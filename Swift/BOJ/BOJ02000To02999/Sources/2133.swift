//
//  2133.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 12/5/23.
//

//  문제 링크: https://www.acmicpc.net/problem/2133
//  알고리즘 분류: 다이나믹 프로그래밍

class BOJ2133: Solvable {
    func run() {
        // 메모리: 69100KB, 시간: 8ms, 코드 길이: 291B
        let N = Int(readLine()!)!
        var dp = Array(repeating: 0, count: N+1)

        if N > 1 {
            dp[2] = 3
        }

        for idx in stride(from: 4, through: N, by: 2) {
            dp[idx] = dp[idx - 2] * 3 + 2

            for prev in stride(from: 2, through: idx - 4, by: 2) {
                dp[idx] += dp[prev] * 2
            }
        }

        print(dp[N])
    }
}
