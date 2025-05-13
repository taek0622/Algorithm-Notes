//
//  13909.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/04/07.
//

// 문제: https://www.acmicpc.net/problem/13909

import Foundation

import Shared

public struct BOJ13909: Solvable {
    public init() {}

    public func run() {
        solution2()
    }

    // 메모리: 79504KB, 시간: 12ms, 코드 길이: 67B
    private func solution1() {
        let N = Double(readLine()!)!
        print(Int(sqrt(N)))
    }

    // 메모리: 69100KB, 시간: 8ms, 코드 길이: 135B
    private func solution2() {
        let N = Int(readLine()!)!
        var divisor = 2
        var count = 1

        while divisor * divisor <= N {
            count += 1
            divisor += 1
        }

        print(count)
    }
}
