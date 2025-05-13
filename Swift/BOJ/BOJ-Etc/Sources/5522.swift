//
//  5522.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/02/19.
//

// 문제: https://www.acmicpc.net/problem/5522

import Shared

public struct BOJ5522: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69100KB, 시간: 8ms, 코드 길이: 72B
        var sum = 0

        for _ in 0..<5 {
            sum += Int(readLine()!)!
        }

        print(sum)
    }
}
