//
//  11047.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/02/03.
//

// 문제: https://www.acmicpc.net/problem/11047

import Shared

public struct BOJ11047: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69104KB, 시간: 8ms, 코드 길이: 267B
        var input = readLine()!.split(separator: " ").map { Int(String($0))! }
        var coins = [Int]()
        var count = 0

        for _ in 0..<input[0] {
            coins.append(Int(readLine()!)!)
        }

        for coin in coins.reversed() {
            count += (input[1] / coin)
            input[1] %= coin
        }

        print(count)
    }
}
