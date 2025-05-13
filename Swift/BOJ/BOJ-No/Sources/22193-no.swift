//
//  22193.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/07/09.
//

// 문제: https://www.acmicpc.net/problem/22193

import Shared

public struct BOJ22193: Solvable {
    public init() {}

    public func run() {
        let count = readLine()!.split(separator: " ").map { Int(String($0))! }.reduce(0, +)
        var (N, M) = (readLine()!.map { Int(String($0))! }, readLine()!.map { Int(String($0))! })
        var sum = Array(repeating: 0, count: count)

        N.reverse()
        M.reverse()

        for number in N.indices {
            for idx in M.indices {
                sum[number + idx] += (N[number] * M[idx])

                if sum[number + idx] > 9 {
                    sum[number + idx + 1] += (sum[number + idx] / 10)
                    sum[number + idx] %= 10
                }
            }
        }

        while sum.last == 0 && sum.count != 1 {
            sum.removeLast()
        }

        print(sum.reversed().map { String($0) }.joined())
    }
}
