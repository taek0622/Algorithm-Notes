//
//  10812.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/03/02.
//

// 문제: https://www.acmicpc.net/problem/10812

import Shared

public struct BOJ10812: Solvable {
    public init() {}

    public func run() {
        solution1()
    }

    // 메모리: 69108KB, 시간: 8ms, 코드 길이: 391B
    private func solution1() {
        let NM = readLine()!.split(separator: " ").map { Int(String($0))! }
        var basket = Array(1...NM[0])

        for _ in 0..<NM[1] {
            let input = readLine()!.split(separator: " ").map { Int(String($0))! - 1 }
            let part = basket[input[0]..<input[2]]
            basket.insert(contentsOf: part, at: input[1] + 1)
            basket.removeSubrange(input[0]..<input[2])
        }

        basket.forEach { print($0, terminator: " ") }
    }

    // 메모리: 69112KB, 시간: 8ms, 코드 길이: 339B
    private func solution2() {
        let NM = readLine()!.split(separator: " ").map { Int(String($0))! }
        var basket = Array(1...NM[0])

        for _ in 0..<NM[1] {
            let input = readLine()!.split(separator: " ").map { Int(String($0))! - 1 }
            basket[input[0]...input[1]] = basket[input[2]...input[1]] + basket[input[0]..<input[2]]
        }

        basket.forEach { print($0, terminator: " ") }
    }
}
