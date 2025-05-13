//
//  17256.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/05/07.
//

// 문제: https://www.acmicpc.net/problem/17256

import Shared

public struct BOJ17256: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69104KB, 시간: 8ms, 코드 길이: 178B
        let a = readLine()!.split(separator: " ").map { Int(String($0))! }
        let c = readLine()!.split(separator: " ").map { Int(String($0))! }
        print(c[0] - a[2], c[1] / a[1], c[2] - a[0])
    }
}
