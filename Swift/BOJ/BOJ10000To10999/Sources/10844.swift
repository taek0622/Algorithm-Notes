//
//  10844.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 10/7/23.
//

//  문제 링크: https://www.acmicpc.net/problem/10844
//  알고리즘 분류: 다이나믹 프로그래밍

import Shared

public struct BOJ10844: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69100KB, 시간: 8ms, 코드 길이: 278B
        let N = Int(readLine()!)!
        var dp = [0, 1, 1, 1, 1, 1, 1, 1, 1, 1]

        for _ in 1..<N {
            var temp = [dp[1], 0, 0, 0, 0, 0, 0, 0, 0, dp[8]]

            for idx in 1...8 {
                temp[idx] = (dp[idx-1] + dp[idx+1]) % 1000000000
            }

            dp = temp
        }

        print(dp.reduce(0, +) % 1000000000)
    }
}
