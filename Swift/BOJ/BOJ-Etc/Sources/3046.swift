//
//  3046.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/01/31.
//

// 문제: https://www.acmicpc.net/problem/3046

import Shared

public struct BOJ3046: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69104KB, 시간: 8ms, 코드 길이: 102B
        let input = readLine()!.split(separator: " ").map { Int(String($0))! }

        print(input[1] * 2 - input[0])
    }
}
