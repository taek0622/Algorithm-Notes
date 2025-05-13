//
//  1292.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/02/13.
//

// 문제: https://www.acmicpc.net/problem/1292

import Shared

public struct BOJ1292: Solvable {
    public init() {}

    public func run() {
        solution2()
    }

    // 메모리: 69104KB, 시간: 8ms, 코드 길이: 324B
    private func solution1() {
        let input = readLine()!.split(separator: " ").map { Int(String($0))! }
        var numbers = Array(repeating: 0, count: 1001)
        var count = 0
        var iter = 1

        for idx in 1...1000 {
            numbers[idx] = iter
            count += 1

            if count == iter {
                iter += 1
                count = 0
            }
        }

        print(numbers[input[0]...input[1]].reduce(0, +))
    }

    // 메모리: 69104KB, 시간: 8ms, 코드 길이: 210B
    private func solution2() {
        let input = readLine()!.split(separator: " ").map { Int(String($0))! }
        var numbers = [0]

        for idx in 1...45 {
            numbers += Array(repeating: idx, count: idx)
        }

        print(numbers[input[0]...input[1]].reduce(0, +))
    }
}
