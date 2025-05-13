//
//  2355.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/05/15.
//

// 문제: https://www.acmicpc.net/problem/2355

import Shared

public struct BOJ2355: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69104KB, 시간: 8ms, 코드 길이: 136B
        let input = readLine()!.split(separator: " ").map { Int(String($0))! }
        print((input[0] + input[1]) * (abs(input[1] - input[0]) + 1) / 2)
    }
}
