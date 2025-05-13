//
//  7891.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/07/05.
//

// 문제: https://www.acmicpc.net/problem/7891

import Shared

public struct BOJ7891: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69104KB, 시간: 8ms, 코드 길이: 128B
        let T = Int(readLine()!)!

        for _ in 0..<T {
            print(readLine()!.split(separator: " ").map { Int(String($0))! }.reduce(0, +))
        }
    }
}
