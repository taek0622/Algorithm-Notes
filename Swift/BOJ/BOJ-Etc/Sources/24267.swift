//
//  24267.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/04/15.
//

// 문제: https://www.acmicpc.net/problem/24267

import Shared

public struct BOJ24267: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69100KB, 시간: 8ms, 코드 길이: 56B
        let n = Int(readLine()!)!
        print("\(n*(n-1)*(n-2)/6)\n3")
    }
}
