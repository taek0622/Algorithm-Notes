//
//  2292.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2022/12/26.
//

// 문제: https://www.acmicpc.net/problem/2292

import Shared

public struct BOJ2292: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69100KB, 시간: 8ms, 코드 길이: 131B
        let N = Int(readLine()!)!

        var current = 1
        var path = 1

        while current < N {
            current += (6 * path)
            path += 1
        }

        print(path)
    }
}
