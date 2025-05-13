//
//  5893.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/06/17.
//

// 문제: https://www.acmicpc.net/problem/5893

import Shared

public struct BOJ5893: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69104KB, 시간: 8ms, 코드 길이: 413B
        var N = Array(readLine()!.map { Int(String($0))! })
        var result = [0] + N + Array(repeating: 0, count: 4)
        N = Array(repeating: 0, count: 5) + N

        result.reverse()
        N.reverse()

        for idx in 0..<result.count - 1 {
            let number = N[idx] + result[idx]
            result[idx] = number % 2
            result[idx + 1] += number / 2
        }

        if result.last == 0 {
            result.removeLast()
        }

        print(result.reversed().map { String($0) }.joined())
    }
}
