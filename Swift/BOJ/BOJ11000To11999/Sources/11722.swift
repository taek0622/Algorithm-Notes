//
//  11722.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 11/23/23.
//

//  문제 링크: https://www.acmicpc.net/problem/11722
//  알고리즘 분류: 다이나믹 프로그래밍

class BOJ11722: Solvable {
    func run() {
        solution2()
    }

    // 메모리: 69104KB, 시간: 12ms, 코드 길이: 283B
    private func solution1() {
        let N = Int(readLine()!)!
        let A = readLine()!.split(separator: " ").map { Int(String($0))! }
        var dp = Array(repeating: 1, count: N)

        for idx in 0..<N {
            for comp in 0..<idx where A[comp] > A[idx] && dp[idx] < dp[comp] + 1 {
                dp[idx] = dp[comp] + 1
            }
        }

        print(dp.max()!)
    }

    // 메모리: 69104KB, 시간: 8ms, 코드 길이: 458B
    private func solution2() {
        let N = Int(readLine()!)!
        let A = readLine()!.split(separator: " ").map { Int(String($0))! }
        var dp = [A[0]]

        for idx in 1..<N {
            if A[idx] < dp.last! {
                dp.append(A[idx])
                continue
            }

            var min = 0
            var max = dp.count - 1

            while min < max {
                let mid = (min + max) / 2

                if A[idx] < dp[mid] {
                    min = mid + 1
                } else {
                    max = mid
                }
            }

            dp[max] = A[idx]
        }

        print(dp.count)
    }
}
