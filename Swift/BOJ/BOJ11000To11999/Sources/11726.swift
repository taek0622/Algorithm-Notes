//
//  11726.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/09/26.
//

//  문제 링크: https://www.acmicpc.net/problem/11726
//  알고리즘 분류: 다이나믹 프로그래밍

class BOJ11726: Solvable {
    func run() {
        solution2()
    }

    // 메모리: 69100KB, 시간: 12ms, 코드 길이: 176B
    private func solution1() {
        let n = Int(readLine()!)!
        var dp = [1, 2]

        if n < 3 {
            print(dp[n - 1])
        } else {
            for _ in 3...n {
                dp = [dp[1], dp.reduce(0, +) % 10007]
            }

            print(dp[1])
        }
    }

    // 메모리: 69100KB, 시간: 8ms, 코드 길이: 129B
    private func solution2() {
        let n = Int(readLine()!)!
        var dp = [1, 2]

        for idx in 2...1000 {
            dp.append((dp[idx-2] + dp[idx-1]) % 10007)
        }

        print(dp[n-1])
    }
}
