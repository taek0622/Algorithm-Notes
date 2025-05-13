//
//  16395.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/07/25.
//

// 문제: https://www.acmicpc.net/problem/16395

import Shared

public struct BOJ16395: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69104KB, 시간: 8ms, 코드 길이: 466B
        let input = readLine()!.split(separator: " ").map { Int(String($0))! }
        var triangle = Array(repeating: Array(repeating: 0, count: input[0] + 1), count: input[0] + 1)
        print(combination(input[0], input[1]))

        func combination(_ n: Int, _ k: Int) -> Int {
            if k == 1 || n == k {
                return 1
            }

            if triangle[n][k] != 0 {
                return triangle[n][k]
            }

            triangle[n][k] = combination(n - 1, k - 1) + combination(n - 1, k)
            return triangle[n][k]
        }
    }
}
