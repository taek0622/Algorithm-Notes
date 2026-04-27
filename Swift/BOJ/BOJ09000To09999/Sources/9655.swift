//
//  9655.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/07/04.
//

// 문제: https://www.acmicpc.net/problem/9655

import Shared

public struct BOJ9655: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69096KB, 시간: 8ms, 코드 길이: 57B
        let N = Int(readLine()!)!
        print(N % 2 == 1 ? "SK" : "CY")
    }
}
