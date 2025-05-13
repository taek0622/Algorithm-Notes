//
//  14916.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/07/20.
//

// 문제: https://www.acmicpc.net/problem/14916

import Shared

public struct BOJ14916: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69100KB, 시간: 8ms, 코드 길이: 199B
        var n = Int(readLine()!)!

        if n == 1 || n == 3 {
            print(-1)
        } else {
            var result = 0

            while n % 5 != 0 {
                result += 1
                n -= 2
            }

            result += (n / 5)

            print(result)
        }
    }
}
