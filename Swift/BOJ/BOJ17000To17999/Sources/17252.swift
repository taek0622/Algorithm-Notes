//
//  17252.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/08/19.
//

// 문제: https://www.acmicpc.net/problem/17252

import Shared

public struct BOJ17252: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69100KB, 시간: 8ms, 코드 길이: 119B
        let N = Int(readLine()!)!

        if N == 0 || String(N, radix: 3).contains("2") {
            print("NO")
        } else {
            print("YES")
        }
    }
}
