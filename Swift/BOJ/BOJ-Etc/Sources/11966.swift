//
//  11966.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/06/09.
//

// 문제: https://www.acmicpc.net/problem/11966

import Shared

public struct BOJ11966: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69100KB, 시간: 8ms, 코드 길이: 81B
        var N = Int(readLine()!)!

        while N % 2 == 0 {
            N /= 2
        }

        print(N == 1 ? 1 : 0)
    }
}
