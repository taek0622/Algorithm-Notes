//
//  956.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/07/21.
//

// 문제: https://www.acmicpc.net/problem/9656

import Shared

public struct BOJ9656: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69096KB, 시간: 8ms, 코드 길이: 57B
        let N = Int(readLine()!)!
        print(N % 2 == 0 ? "SK" : "CY")
    }
}
