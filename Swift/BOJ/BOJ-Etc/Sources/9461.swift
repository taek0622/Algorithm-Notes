//
//  9461.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/07/29.
//

// 문제: https://www.acmicpc.net/problem/9461

import Shared

public struct BOJ9461: Solvable {
    public init() {}

    public func run() {
        solution2()
    }

    // 메모리: 69100KB, 시간: 8ms, 코드 길이: 175B
    private func solution1() {
        var P = [1, 1, 1, 2, 2]
        let T = Int(readLine()!)!

        for idx in 5...100 {
            P.append(P[idx-1] + P[idx-5])
        }

        for _ in 0..<T {
            let N = Int(readLine()!)!
            print(P[N-1])
        }
    }

    // 메모리: 69100KB, 시간: 8ms, 코드 길이: 169B
    private func solution2() {
        var P = [1, 1, 1]
        let T = Int(readLine()!)!

        for idx in 3...100 {
            P.append(P[idx-3] + P[idx-2])
        }

        for _ in 0..<T {
            let N = Int(readLine()!)!
            print(P[N-1])
        }
    }
}
