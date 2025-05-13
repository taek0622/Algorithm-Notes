//
//  2631.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 1/5/24.
//

//  문제 링크: https://www.acmicpc.net/problem/2630
//  알고리즘 분류: 다이나믹 프로그래밍

import Shared

public struct BOJ2631: Solvable {
    public init() {}

    public func run() {
        solution1()
    }

    // 메모리: 69100KB, 시간: 8ms, 코드 길이: 309B
    private func solution1() {
        let N = Int(readLine()!)!
        var children = Array(repeating: 1, count: N)
        var dp = children

        for idx in 0..<N {
            children[idx] = Int(readLine()!)!
        }

        for base in 0..<N {
            for comp in 0..<base where children[base] > children[comp] {
                dp[base] = max(dp[base], dp[comp]+1)
            }
        }

        print(N - dp.max()!)
    }

    // 메모리: 69100KB, 시간: 8ms, 코드 길이: 651B
    private func solution2() {
        let N = Int(readLine()!)!
        var children = Array(repeating: 1, count: N)

        for idx in 0..<N {
            children[idx] = Int(readLine()!)!
        }

        var dp = [children[0]]

        for idx in 1..<N {
            if children[idx] > dp.last! {
                dp.append(children[idx])
            } else {
                let next = binarySearch(children[idx])
                dp[next] = children[idx]
            }
        }

        print(N - dp.count)

        func binarySearch(_ target: Int) -> Int {
            var (left, right) = (0, dp.count - 1)

            while left <= right {
                let mid = (left + right) / 2

                if dp[mid] >= target {
                    right = mid - 1
                } else {
                    left = mid + 1
                }
            }

            return left
        }
    }
}
