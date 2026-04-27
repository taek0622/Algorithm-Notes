//
//  15624.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/07/31.
//

// 문제: https://www.acmicpc.net/problem/15624

import Shared

public struct BOJ15624: Solvable {
    public init() {}

    public func run() {
        solution4()
    }

    // 메모리: 69100KB, 시간: 56ms, 코드 길이: 200B
    private func solution1() {
        let n = Int(readLine()!)!
        var fibonacci = [0, 1]

        for _ in 0..<n {
            let sum = fibonacci.reduce(0, +)
            fibonacci = [fibonacci[1], sum > 1000000007 ? sum % 1000000007 : sum]
        }

        print(fibonacci[0])
    }

    // 메모리: 87924KB, 시간: 40ms, 코드 길이: 238B
    private func solution2() {
        let n = Int(readLine()!)!
        var fibonacci = [0, 1]

        if n > 1 {
            for idx in 2...n {
                let sum = fibonacci[idx - 1] + fibonacci[idx - 2]
                fibonacci.append(sum > 1000000007 ? sum % 1000000007 : sum)
            }
        }

        print(fibonacci[n])
    }

    // 메모리: 76916KB, 시간: 20ms, 코드 길이: 316B
    private func solution3() {
        let n = Int(readLine()!)!

        if n < 2 {
            print(n)
        } else {
            var fibonacci = Array(repeating: 0, count: n + 1)
            fibonacci[1] = 1

            for idx in 2...n {
                let sum = fibonacci[idx - 1] + fibonacci[idx - 2]
                fibonacci[idx] = sum > 1000000007 ? sum % 1000000007 : sum
            }

            print(fibonacci[n])
        }
    }

    // 메모리: 69100KB, 시간: 12ms, 코드 길이: 227B
    private func solution4() {
        let n = Int(readLine()!)!
        var fibonacci1 = 0
        var fibonacci2 = 1

        for _ in 0..<n {
            let sum = fibonacci1 + fibonacci2
            fibonacci1 = fibonacci2
            fibonacci2 = sum > 1000000007 ? sum % 1000000007 : sum
        }

        print(fibonacci1)
    }
}
