//
//  9085.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/04/08.
//

// 문제: https://www.acmicpc.net/problem/9085

import Shared

public struct BOJ9085: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69104KB, 시간: 8ms, 코드 길이: 154B
        let T = Int(readLine()!)!

        for _ in 0..<T {
            _ = Int(readLine()!)!
            print(readLine()!.split(separator: " ").map { Int(String($0))! }.reduce(0, +))
        }
    }
}
