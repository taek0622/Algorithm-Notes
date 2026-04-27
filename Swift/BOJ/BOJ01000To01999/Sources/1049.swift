//
//  1049.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/03/22.
//

// 문제: https://www.acmicpc.net/problem/1049

import Shared

public struct BOJ1049: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69104KB, 시간: 8ms, 코드 길이: 490B
        let input = readLine()!.split(separator: " ").map { Int(String($0))! }
        var setPrices = 1000
        var singlePrices = 1000

        for _ in 0..<input[1] {
            let prices = readLine()!.split(separator: " ").map { Int(String($0))! }
            if setPrices > prices[0] {
                setPrices = prices[0]
            }

            if singlePrices > prices[1] {
                singlePrices = prices[1]
            }
        }

        print(min(((input[0] - 1) / 6 + 1) * setPrices, input[0] / 6 * setPrices + input[0] % 6 * singlePrices, singlePrices * input[0]))
    }
}
