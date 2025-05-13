//
//  1712.swift
//  Swift
//
//  Created by 김민택 on 2022/06/17.
//

// 문제: https://www.acmicpc.net/problem/1712

import Shared

public struct BOJ1712: Solvable {
    public init() {}

    public func run() {
        solution2()
    }

    // 메모리: 69104KB, 시간: 8ms, 코드 길이: 218B
    private func solution1() {
        let input = readLine()!.split(separator: " ").map { Int(String($0))! }

        let A = input[0]
        let B = input[1]
        let C = input[2]

        var count = 0

        if B >= C {
            count = -1
        } else {
            count = A / (C - B) + 1
        }

        print(count)
    }

    // 메모리: 69104KB, 시간: 8ms, 코드 길이: 147B
    private func solution2() {
        let input = readLine()!.split(separator: " ").map { Int(String($0))! }

        print((input[1] >= input[2]) ? -1 : (input[0] / (input[2] - input[1]) + 1))
    }
}
