//
//  1149.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 10/18/23.
//

//  문제 링크: https://www.acmicpc.net/problem/1149
//  알고리즘 분류: 다이나믹 프로그래밍

import Shared

public struct BOJ1149: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69104KB, 시간: 8ms, 코드 길이: 306B
        let N = Int(readLine()!)!
        var dp = readLine()!.split(separator: " ").map { Int(String($0))! }

        for _ in 1..<N {
            let input = readLine()!.split(separator: " ").map { Int(String($0))! }
            dp = [input[0] + min(dp[1], dp[2]), input[1] + min(dp[0], dp[2]), input[2] + min(dp[0], dp[1])]
        }

        print(dp.min()!)
    }
}
