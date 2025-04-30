//
//  11727.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 10/4/23.
//

//  문제 링크: https://www.acmicpc.net/problem/11727
//  알고리즘 분류: 다이나믹 프로그래밍

class BOJ11727: Solvable {
    func run() {
        // 메모리: 69100KB, 시간: 8ms, 코드 길이: 178B
        let n = Int(readLine()!)!
        var dp = [1, 3]

        if n < 3 {
            print(dp[n-1])
        } else {
            for _ in 2..<n {
                dp = [dp[1], (dp[0] * 2 + dp[1]) % 10007]
            }

            print(dp[1])
        }
    }
}
