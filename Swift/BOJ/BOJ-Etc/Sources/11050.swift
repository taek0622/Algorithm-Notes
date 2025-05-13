//
//  11050.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/01/12.
//

// 문제: https://www.acmicpc.net/problem/11050

import Shared

public struct BOJ11050: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69104KB, 시간: 8ms, 코드 길이: 249B
        let input = readLine()!.split(separator: " ").map { Int(String($0))! }

        print("\(factorial(input[0]) / (factorial(input[1]) * factorial(input[0] - input[1])))")

        func factorial(_ num: Int) -> Int {
            return num > 1 ? num * factorial(num - 1) : 1
        }
    }
}
