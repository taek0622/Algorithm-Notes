//
//  6359.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/04/23.
//

// 문제: https://www.acmicpc.net/problem/6359

import Foundation

import Shared

public struct BOJ6359: Solvable {
    public init() {}

    public func run() {
        // 메모리: 79508KB, 시간: 12ms, 코드 길이: 107B
        let T = Int(readLine()!)!

        for _ in 0..<T {
            print(Int(sqrt(Double(readLine()!)!)))
        }
    }
}
