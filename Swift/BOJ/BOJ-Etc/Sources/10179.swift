//
//  10179.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/06/24.
//

// 문제: https://www.acmicpc.net/problem/10179

import Foundation

import Shared

public struct BOJ10179: Solvable {
    public init() {}

    public func run() {
        // 메모리: 79508KB, 시간: 12ms, 코드 길이: 149B
        let T = Int(readLine()!)!

        for _ in 0..<T {
            let price = Double(readLine()!)!
            print(String(format: "$%.2f", price * 0.8))
        }
    }
}
