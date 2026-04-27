//
//  10811.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/02/28.
//

// 문제: https://www.acmicpc.net/problem/10811

import Shared

public struct BOJ10811: Solvable {
    public init() {}

    public func run() {
        solution2()
    }

    // 메모리: 69108KB, 시간: 8ms, 코드 길이: 289B
    private func solution1() {
        let NM = readLine()!.split(separator: " ").map { Int(String($0))! }
        var basket = Array(1...NM[0])

        for _ in 0..<NM[1] {
            let input = readLine()!.split(separator: " ").map { Int(String($0))! - 1 }
            basket[input[0]...input[1]].reverse()
        }

        basket.forEach { print($0, terminator: " ") }
    }

    // 메모리: 69104KB, 시간: 8ms, 코드 길이: 341B
    private func solution2() {
        let NM = readLine()!.split(separator: " ").map { Int(String($0))! }
        var basket = Array(1...NM[0])

        for _ in 0..<NM[1] {
            let input = readLine()!.split(separator: " ").map { Int(String($0))! - 1 }
            basket.replaceSubrange(input[0]...input[1], with: basket[input[0]...input[1]].reversed())
        }

        basket.forEach { print($0, terminator: " ") }
    }
}
