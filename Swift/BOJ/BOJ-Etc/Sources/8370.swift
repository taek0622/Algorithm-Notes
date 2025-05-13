//
//  8370.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/04/22.
//

// 문제: https://www.acmicpc.net/problem/8370

import Shared

public struct BOJ8370: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69104KB, 시간: 8ms, 코드 길이: 119B
        let input = readLine()!.split(separator: " ").map { Int(String($0))! }
        print(input[0] * input[1] + input[2] * input[3])
    }
}
