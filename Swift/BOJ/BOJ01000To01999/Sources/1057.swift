//
//  1057.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/07/18.
//

// 문제: https://www.acmicpc.net/problem/1057

import Shared

public struct BOJ1057: Solvable {
    public init() {}

    public func run() {
        solution2()
    }

    // 메모리: 69104KB, 시간: 8ms, 코드 길이: 328B
    private func solution1() {
        var input = readLine()!.split(separator: " ").map { Int(String($0))! }
        var currentRound = 1

        while nextRound(input[1]) != nextRound(input[2]) {
            input[1] = nextRound(input[1])
            input[2] = nextRound(input[2])
            currentRound += 1
        }

        print(currentRound)

        func nextRound(_ number: Int) -> Int {
            return (number + 1) / 2
        }
    }

    // 메모리: 69104KB, 시간: 8ms, 코드 길이: 185B
    private func solution2() {
        var input = readLine()!.split(separator: " ").map { Int(String($0))! - 1 }
        var round = 0

        while input[1] != input[2] {
            input[1] /= 2
            input[2] /= 2
            round += 1
        }

        print(round)
    }
}
