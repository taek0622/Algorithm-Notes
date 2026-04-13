//
//  2281.swift
//  BOJ02000To02999
//
//  Created by 김이안 on 4/13/26.
//

//  문제 링크: https://www.acmicpc.net/problem/2281
//  알고리즘 분류: 다이나믹 프로그래밍

import Shared

public struct BOJ2281: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69108KB, 시간: 12ms, 코드 길이: 680B
        let nm = readLine()!.split(separator: " ").map { Int($0)! }
        var names = Array(repeating: 0, count: nm[0])
        var dp = Array(repeating: 1000000000, count: nm[0])
        dp[nm[0]-1] = 0

        for idx in 0..<nm[0] {
            names[idx] = Int(readLine()!)!
        }

        for idx in stride(from: nm[0]-2, through: 0, by: -1) {
            let currBlank = (nm[1] - names[idx])
            var sum = names[idx]
            dp[idx] = min(dp[idx], currBlank * currBlank + dp[idx+1])

            for next in stride(from: idx+1, to: nm[0], by: 1) {
                sum += names[next] + 1

                if sum > nm[1] {
                    break
                }

                dp[idx] = min(dp[idx], next == nm[0]-1 ? 0 : (nm[1] - sum) * (nm[1] - sum) + dp[next+1])
            }
        }

        print(dp[0])
    }
}
