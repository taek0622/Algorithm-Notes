//
//  27433.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/06/23.
//

// 문제: https://www.acmicpc.net/problem/27433

import Shared

public struct BOJ27433: Solvable {
    public init() {}

    public func run() {
        solution1()
    }

    // 메모리: 69100KB, 시간: 8ms, 코드 길이: 126B
    private func solution1() {
        let N = Int(readLine()!)!
        print(factorial(N))

        func factorial(_ N: Int) -> Int {
            return N > 1 ? factorial(N - 1) * N : 1
        }
    }

    // 메모리: 69100KB, 시간: 8ms, 코드 길이: 126B
    private func solution2() {
        let N = Int(readLine()!)!
        var result = 1

        if N > 1 {
            for number in 2...N {
                result *= number
            }
        }

        print(result)
    }

    // 메모리: 69100KB, 시간: 8ms, 코드 길이: 51B
    private func solution3() {
        print((1...max(1, Int(readLine()!)!)).reduce(1, *))
    }
}
