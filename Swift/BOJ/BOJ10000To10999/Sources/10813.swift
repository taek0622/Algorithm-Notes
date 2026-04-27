//
//  10813.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/02/28.
//

// 문제: https://www.acmicpc.net/problem/10813

import Shared

public struct BOJ10813: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69104KB, 시간: 8ms, 코드 길이: 385B
        let NM = readLine()!.split(separator: " ").map { Int(String($0))! }
        var basket = [Int](1...NM[0])

        for _ in 0..<NM[1] {
            let input = readLine()!.split(separator: " ").map { Int(String($0))! - 1 }
            basket.swapAt(input[0], input[1])
        }

        basket.forEach { print($0, terminator: " ") }
    }
}
