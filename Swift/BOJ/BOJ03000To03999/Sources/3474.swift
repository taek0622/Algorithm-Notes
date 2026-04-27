//
//  3474.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/08/03.
//

// 문제: https://www.acmicpc.net/problem/3474

import Shared

public struct BOJ3474: Solvable {
    public init() {}

    public func run() {
        solution3()
    }

    // 메모리: 69100KB, 시간: 104ms, 코드 길이: 228B
    private func solution1() {
        let T = Int(readLine()!)!

        for _ in 0..<T {
            let N = Int(readLine()!)!
            print(N / 5 + N / 25 + N / 125 + N / 625 + N / 3125 + N / 15625 + N / 78125 + N / 390625 + N / 1953125 + N / 9765625 + N / 48828125 + N / 244140625)
        }
    }

    // 메모리: 69100KB, 시간: 112ms, 코드 길이: 208B
    private func solution2() {
        let T = Int(readLine()!)!

        for _ in 0..<T {
            let N = Int(readLine()!)!
            var result = 0
            var count = 5

            while count <= N {
                result += N / count
                count *= 5
            }

            print(result)
        }
    }

    // 메모리: 71076KB, 시간: 64ms, 코드 길이: 254B
    private func solution3() {
        let T = Int(readLine()!)!
        var result = ""

        for _ in 0..<T {
            let N = Int(readLine()!)!
            var count = 0
            var divisor = 5

            while divisor <= N {
                count += N / divisor
                divisor *= 5
            }

            result += "\(count)\n"
        }

        print(result)
    }
}
