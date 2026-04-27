//
//  2783.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/07/12.
//

// 문제: https://www.acmicpc.net/problem/2783

import Shared

public struct BOJ2783: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69104KB, 시간: 8ms, 코드 길이: 366B
        let seven = readLine()!.split(separator: " ").map { Double(String($0))! }
        let N = Int(readLine()!)!
        var minPrice = 1000 / seven[1] * seven[0]

        for _ in 0..<N {
            let input = readLine()!.split(separator: " ").map { Double(String($0))! }
            let newPrice = 1000 / input[1] * input[0]

            if newPrice < minPrice {
                minPrice = newPrice
            }
        }

        print(minPrice)
    }
}
