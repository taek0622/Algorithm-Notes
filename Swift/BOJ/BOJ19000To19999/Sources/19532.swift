//
//  19532.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/04/03.
//

// 문제: https://www.acmicpc.net/problem/19532

import Shared

public struct BOJ19532: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69104KB, 시간: 8ms, 코드 길이: 240B
        let input = readLine()!.split(separator: " ").map { Int(String($0))! }
        let (a, b, c, d, e, f) = (input[0], input[1], input[2], input[3], input[4], input[5])

        print("\((c * e - b * f) / (a * e - d * b)) \((c * d - a * f) / (b * d - a * e))")
    }
}
