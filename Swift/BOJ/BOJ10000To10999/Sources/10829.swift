//
//  10829.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/07/06.
//

// 문제: https://www.acmicpc.net/problem/10829

import Shared

public struct BOJ10829: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69100KB, 시간: 8ms, 코드 길이: 52B
        let N = Int(readLine()!)!
        print(String(N, radix: 2))
    }
}
