//
//  24313.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/04/16.
//

// 문제: https://www.acmicpc.net/problem/24313

import Shared

public struct BOJ24313: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69104KB, 시간: 8ms, 코드 길이: 183B
        let a_n = readLine()!.split(separator: " ").map { Int(String($0))! }
        let c = Int(readLine()!)!
        let n0 = Int(readLine()!)!

        print(a_n[0] * n0 + a_n[1] <= c * n0 && a_n[0] <= c ? 1 : 0)
    }
}
