//
//  5596.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/03/21.
//

// 문제: https://www.acmicpc.net/problem/5596

import Shared

public struct BOJ5596: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69104KB, 시간: 8ms, 코드 길이: 177B
        let S = readLine()!.split(separator: " ").map { Int(String($0))! }.reduce(0, +)
        let T = readLine()!.split(separator: " ").map { Int(String($0))! }.reduce(0, +)

        print(max(S, T))
    }
}
