//
//  10569.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/05/09.
//

// 문제: https://www.acmicpc.net/problem/10569

import Shared

public struct BOJ10569: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69104KB, 시간: 8ms, 코드 길이: 155B
        let T = Int(readLine()!)!

        for _ in 0..<T {
            let input = readLine()!.split(separator: " ").map { Int(String($0))! }
            print(input[1] - input[0] + 2)
        }
    }
}
