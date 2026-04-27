//
//  2953.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/02/19.
//

// 문제: https://www.acmicpc.net/problem/2953

import Shared

public struct BOJ2953: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69104KB, 시간: 8ms, 코드 길이: 226B
        var winner = (0, 0)

        for idx in 1...5 {
            let score = readLine()!.split(separator: " ").map { Int(String($0))! }.reduce(0, +)

            if score > winner.1 {
                winner = (idx, score)
            }
        }

        print("\(winner.0) \(winner.1)")
    }
}
