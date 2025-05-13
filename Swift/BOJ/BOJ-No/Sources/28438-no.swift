//
//  28438.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/08/13.
//

// 문제: https://www.acmicpc.net/problem/28438

import Shared

public struct BOJ28438: Solvable {
    public init() {}

    public func run() {
        let input = readLine()!.split(separator: " ").map { Int(String($0))! }
        var A = Array(repeating: Array(repeating: 0, count: input[1]), count: input[0])
        var result = ""

        for _ in 0..<input[2] {
            let operation = readLine()!.split(separator: " ").map { Int(String($0))! }

            if operation[0] == 1 {
                for idx in A[operation[1] - 1].indices {
                    A[operation[1] - 1][idx] += operation[2]
                }
            } else {
                for idx in A.indices {
                    A[idx][operation[1] - 1] += operation[2]
                }
            }
        }

        for row in A {
            for col in row {
                result += "\(col) "
            }

            result += "\n"
        }

        print(result)
    }
}
