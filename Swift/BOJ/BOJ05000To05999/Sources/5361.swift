//
//  5361.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/07/13.
//

// 문제: https://www.acmicpc.net/problem/5361

import Foundation

import Shared

public struct BOJ5361: Solvable {
    public init() {}

    public func run() {
        // 메모리: 79512KB, 시간: 12ms, 코드 길이: 274B
        let T = Int(readLine()!)!

        for _ in 0..<T {
            let input = readLine()!.split(separator: " ").map { Double(String($0))! }
            print(String(format: "$%.2f", input[0] * 350.34 + input[1] * 230.9 + input[2] * 190.55 + input[3] * 125.30 + input[4] * 180.9))
        }
    }
}
