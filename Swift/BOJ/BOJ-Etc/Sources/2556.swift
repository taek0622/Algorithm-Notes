//
//  2556.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/02/24.
//

// 문제: https://www.acmicpc.net/problem/2556

import Shared

public struct BOJ2556: Solvable {
    public init() {}

    public func run() {
        solution2()
    }

    // 메모리: 69100KB, 시간: 8ms, 코드 길이: 145B
    private func solution1() {
        let N = Int(readLine()!)!
        var result = ""

        for _ in 0..<N {
            for _ in 0..<N {
                result += "*"
            }

            result += "\n"
        }

        print(result)
    }

    // 메모리: 69100KB, 시간: 8ms, 코드 길이: 89B
    private func solution2() {
        let N = Int(readLine()!)!

        for _ in 0..<N {
            print(String(repeating: "*", count: N))
        }
    }
}
