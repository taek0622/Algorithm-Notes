//
//  20254.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/06/02.
//

// 문제: https://www.acmicpc.net/problem/20254

import Shared

public struct BOJ20254: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69104KB, 시간: 8ms, 코드 길이: 138B
        let input = readLine()!.split(separator: " ").map { Int(String($0))! }
        print(56 * input[0] + 24 * input[1] + 14 * input[2] + 6 * input[3])
    }
}
