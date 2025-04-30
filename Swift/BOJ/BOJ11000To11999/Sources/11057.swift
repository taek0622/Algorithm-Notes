//
//  11057.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 11/7/23.
//

//  문제 링크: https://www.acmicpc.net/problem/11057
//  알고리즘 분류: 다이나믹 프로그래밍

class BOJ11057: Solvable {
    func run() {
        // 메모리: 69100KB, 시간: 8ms, 코드 길이: 198B
        let N = Int(readLine()!)!
        var dp = Array(repeating: 1, count: 10)

        for _ in 0..<N-1 {
            for idx in 0...9 {
                dp[idx] = dp[idx...].reduce(0, +) % 10007
            }
        }

        print(dp.reduce(0, +) % 10007)
    }
}
