//
//  24723.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/06/10.
//

// 문제: https://www.acmicpc.net/problem/24723

import Shared

public struct BOJ24723: Solvable {
    public init() {}

    public func run() {
        solution2()
    }

    // 메모리: 69100KB, 시간: 8ms, 코드 길이: 91B
    private func solution1() {
        let N = Int(readLine()!)!
        var result = 1

        for _ in 0..<N {
            result *= 2
        }

        print(result)
    }

    // 메모리: 69096KB, 시간: 8ms, 코드 길이: 29B
    private func solution2() {
        print(1 << Int(readLine()!)!)
    }
}
