//
//  24082.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/07/10.
//

// 문제: https://www.acmicpc.net/problem/24082

import Shared

public struct BOJ24082: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69096KB, 시간: 8ms, 코드 길이: 42B
        let x = Int(readLine()!)!
        print(x * x * x)
    }
}
