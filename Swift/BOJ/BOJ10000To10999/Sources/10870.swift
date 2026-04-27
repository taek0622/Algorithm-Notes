//
//  10870.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/01/05.
//

// 문제: https://www.acmicpc.net/problem/10870

import Shared

public struct BOJ10870: Solvable {
    public init() {}

    public func run() {
        solution3()
    }

    // 메모리: 69100KB, 시간: 8ms, 코드 길이: 195B
    private func solution1() {
        print(fibonacci(Int(readLine()!)!))

        func fibonacci(_ n: Int) -> Int {
            if n == 0 {
                return 0
            }

            if n == 1 {
                return 1
            }

            return fibonacci(n-1) + fibonacci(n-2)
        }
    }

    // 메모리: 69100KB, 시간: 8ms, 코드 길이: 164B
    private func solution2() {
        print(fibonacci(Int(readLine()!)!))

        func fibonacci(_ n: Int) -> Int {
            if n == 0 || n == 1 {
                return n
            }
            return fibonacci(n-2) + fibonacci(n-1)
        }
    }

    // 메모리: 69100KB, 시간: 8ms, 코드 길이: 129B
    private func solution3() {
        print(fibonacci(Int(readLine()!)!))

        func fibonacci(_ n: Int) -> Int {
            return n > 1 ? (fibonacci(n-2) + fibonacci(n-1)) : n
        }
    }
}
