//
//  1193.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2022/12/26.
//

// 문제: https://www.acmicpc.net/problem/1193

import Shared

public struct BOJ1193: Solvable {
    public init() {}

    public func run() {
        solution2()
    }

    // 메모리: 69100KB, 시간: 12ms, 코드 길이: 213B
    private func solution1() {
        let X = Int(readLine()!)!

        var current = 0
        var idx = 0

        while current < X {
            idx += 1
            current += idx
        }

        let x = idx - (current - X)
        let y = 1 + (current - X)

        print(idx % 2 == 0 ? "\(x)/\(y)" : "\(y)/\(x)")
    }

    // 메모리: 69100KB, 시간: 8ms, 코드 길이: 207B
    private func solution2() {
        let X = Int(readLine()!)!

        var current = 0
        var idx = 0

        while current < X {
            idx += 1
            current += idx
        }

        let x = idx - (current - X)
        let y = idx + 1 - x

        print(idx % 2 == 0 ? "\(x)/\(y)" : "\(y)/\(x)")
    }
}
