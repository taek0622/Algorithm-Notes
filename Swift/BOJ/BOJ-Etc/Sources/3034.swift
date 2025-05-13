//
//  3034.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/05/14.
//

// 문제: https://www.acmicpc.net/problem/3034

import Shared

public struct BOJ3034: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69104KB, 시간: 8ms, 코드 길이: 219B
        let input = readLine()!.split(separator: " ").map { Int(String($0))! }

        for _ in 0..<input[0] {
            let length = Int(readLine()!)!

            print(length * length <= input[1] * input[1] + input[2] * input[2] ? "DA" : "NE")
        }
    }
}
