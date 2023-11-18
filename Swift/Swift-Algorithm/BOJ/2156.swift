//
//  2156.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 11/18/23.
//

//  문제 링크: https://www.acmicpc.net/problem/2156
//  알고리즘 분류: 다이나믹 프로그래밍

class BOJ2156: Solvable {
    func run() {
        // 메모리: 69380KB, 시간: 12ms, 코드 길이: 356B
        let n = Int(readLine()!)!
        var wines = [0]
        var dp = Array(repeating: 0, count: n+1)

        for _ in 0..<n {
            wines.append(Int(readLine()!)!)
        }

        dp[1] = wines[1]

        if n > 1 {
            dp[2] = dp[1] + wines[2]
        }

        for idx in stride(from: 3, through: n, by: 1) {
            dp[idx] = max(dp[idx-2] + wines[idx], dp[idx-1], dp[idx-3] + wines[idx-1] + wines[idx])
        }

        print(dp[n])
    }
}
