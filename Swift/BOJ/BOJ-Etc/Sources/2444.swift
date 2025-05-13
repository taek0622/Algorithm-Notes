//
//  2444.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/03/01.
//

// 문제: https://www.acmicpc.net/problem/2444

import Shared

public struct BOJ2444: Solvable {
    public init() {}

    public func run() {
        solution2()
    }

    // 메모리: 69100KB, 시간: 12ms, 코드 길이: 301B
    private func solution1() {
        let N = Int(readLine()!)!
        var stars = [String]()

        for number in 1...N {
            stars.append(String(repeating: " ", count: N-number) + String(repeating: "*", count: number * 2 - 1))
        }

        for idx in 0..<2*N-1 {
            if idx < N {
                print(stars[idx])
            } else {
                print(stars[2*(N-1)-idx])
            }
        }
    }

    // 메모리: 69100KB, 시간: 12ms, 코드 길이: 294B
    private func solution2() {
        let N = Int(readLine()!)!

        for number in (0..<N).reversed() {
            print(String(repeating: " ", count: number) + String(repeating: "*", count: (N - number) * 2 - 1))
        }

        for number in 1..<N {
            print(String(repeating: " ", count: number) + String(repeating: "*", count: (N - number) * 2 - 1))
        }
    }
}
