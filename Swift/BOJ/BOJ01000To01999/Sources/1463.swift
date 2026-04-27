//
//  1463.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/02/16.
//

// 문제: https://www.acmicpc.net/problem/1463

import Shared

public struct BOJ1463: Solvable {
    public init() {}

    public func run() {
        solution1()
    }

    // 메모리: 76916KB, 시간: 12ms, 코드 길이: 304B
    private func solution1() {
        var numbers = Array(repeating: 0, count: Int(readLine()!)! + 1)

        print(becomeOne(numbers.count - 1))

        func becomeOne(_ X: Int) -> Int {
            if X < 2 || numbers[X] != 0 {
                return numbers[X]
            }

            numbers[X] = min(becomeOne(X / 3) + X % 3, becomeOne(X / 2) + X % 2) + 1

            return numbers[X]
        }
    }

    // 메모리: 69100KB, 시간: 8ms, 코드 길이: 155B
    private func solution2() {
        print(becomeOne(Int(readLine()!)!))

        func becomeOne(_ X: Int) -> Int {
            return X < 2 ? 0 : min(becomeOne(X / 2) + X % 2, becomeOne(X / 3) + X % 3) + 1
        }
    }
}
