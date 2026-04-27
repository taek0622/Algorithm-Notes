//
//  15439.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/05/08.
//

// 문제: https://www.acmicpc.net/problem/15439

import Shared

public struct BOJ15439: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69096KB, 시간: 8ms, 코드 길이: 40B
        let N = Int(readLine()!)!
        print(N*(N-1))
    }
}
