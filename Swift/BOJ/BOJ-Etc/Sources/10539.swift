//
//  10539.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/06/15.
//

// 문제: https://www.acmicpc.net/problem/10539

import Shared

public struct BOJ10539: Solvable {
    public init() {}

    public func run() {
        solution2()
    }

    // 메모리: 69108KB, 시간: 8ms, 코드 길이: 265B
    private func solution1() {
        let N = Int(readLine()!)!
        let B = readLine()!.split(separator: " ").map { Int(String($0))! }
        var A = Array(repeating: B[0], count: N)

        for idx in 1..<N {
            A[idx] = B[idx] * (idx + 1) - A[0..<idx].reduce(0, +)
        }

        print(A.map { String($0) }.joined(separator: " "))
    }

    // 메모리: 69104KB, 시간: 8ms, 코드 길이: 227B
    private func solution2() {
        let N = Int(readLine()!)!
        let B = readLine()!.split(separator: " ").map { Int(String($0))! }
        var sum = 0

        for idx in B.indices {
            let result = B[idx] * (idx + 1) - sum

            sum += result

            print(result, terminator: " ")
        }
    }
}
