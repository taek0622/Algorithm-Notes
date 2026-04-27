//
//  24265.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/04/13.
//

// 문제: https://www.acmicpc.net/problem/24265

import Shared

public struct BOJ24265: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69100KB, 시간: 8ms, 코드 길이: 50B
        let n = Int(readLine()!)!
        print("\(n*(n-1)/2)\n2")
    }
}
