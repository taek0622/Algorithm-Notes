//
//  3004.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/06/03.
//

// 문제: https://www.acmicpc.net/problem/3004

import Shared

public struct BOJ3004: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69100KB, 시간: 8ms, 코드 길이: 62B
        let N = Int(readLine()!)!
        print((N / 2 + 1) * (N - N / 2 + 1))
    }
}
