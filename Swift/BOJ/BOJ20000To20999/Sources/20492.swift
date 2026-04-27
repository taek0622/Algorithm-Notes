//
//  20492.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/05/01.
//

// 문제: https://www.acmicpc.net/problem/20492

import Shared

public struct BOJ20492: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69096KB, 시간: 8ms, 코드 길이: 99B
        let N = Double(readLine()!)!
        print("\(Int(N * (1 - 0.22))) \(Int(N * 0.8 + N * 0.2 * (1 - 0.22)))")
    }
}
