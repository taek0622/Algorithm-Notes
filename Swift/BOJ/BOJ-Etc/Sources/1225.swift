//
//  1225.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/05/06.
//

// 문제: https://www.acmicpc.net/problem/1225

import Shared

public struct BOJ1225: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69104KB, 시간: 12ms, 코드 길이: 199B
        let input = readLine()!.split(separator: " ").map { String($0) }
        let sum1 = input[0].map { Int(String($0))! }.reduce(0, +)
        let sum2 = input[1].map { Int(String($0))! }.reduce(0, +)
        print(sum1 * sum2)
    }
}
