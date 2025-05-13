//
//  17362.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/05/22.
//

// 문제: https://www.acmicpc.net/problem/17362

import Shared

public struct BOJ17362: Solvable {
    public init() {}

    public func run() {
        solution1()
    }

    // 메모리: 69100KB, 시간: 8ms, 코드 길이: 89B
    private func solution1() {
        let n = Int(readLine()!)!
        print((n - 1) / 4 % 2 == 0 ? (n - 1) % 4 + 1 : 5 - (n - 1) % 4)
    }

    // 메모리: 69100KB, 시간: 8ms, 코드 길이: 80B
    private func solution2() {
        let number = [1, 2, 3, 4, 5, 4, 3, 2]
        print(number[(Int(readLine()!)! - 1) % 8])
    }
}
