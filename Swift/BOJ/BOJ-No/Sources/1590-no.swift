//
//  1590.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/08/17.
//

// 문제: https://www.acmicpc.net/problem/1590

import Shared

public struct BOJ1590: Solvable {
    public init() {}

    public func run() {
        let NT = readLine()!.split(separator: " ").map { Int(String($0))! }
        var result = 2147483648

        for _ in 0..<NT[0] {
            var input = readLine()!.split(separator: " ").map { Int(String($0))! }

            while input[0] < NT[1] && input[2] > 0 {
                input[0] += input[1]
                input[2] -= 1
            }

            if input[0] - NT[1] < result {
                result = input[0] - NT[1]
            }

            if (input[0] < NT[1] && input[2] <= 0) || result >= 2147483648 {
                result = -1
            }
        }

        print(result)
    }
}
