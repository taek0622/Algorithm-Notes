//
//  1010.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/01/13.
//

// 문제: https://www.acmicpc.net/problem/1010

import Shared

public struct BOJ1010: Solvable {
    public init() {}

    public func run() {
        let T = Int(readLine()!)!

        for _ in 0..<T {
            let input = readLine()!.split(separator: " ").map { UInt64(String($0))! }
            var result: UInt64 = 1

            for number in (input[0]+1)...input[1] {
                result *= number
            }

            result /= factorial(input[0])
            print(result)
        }

        func factorial(_ num: UInt64) -> UInt64 {
            return num > 1 ? num * factorial(num - 1) : 1
        }
    }
}
