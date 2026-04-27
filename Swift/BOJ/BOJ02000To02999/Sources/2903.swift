//
//  2903.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/04/01.
//

// 문제: https://www.acmicpc.net/problem/2903

import Foundation

import Shared

public struct BOJ2903: Solvable {
    public init() {}

    public func run() {
        solution3()
    }

    // 메모리: 79508KB, 시간: 12ms, 코드 길이: 73B
    private func solution1() {
        let N = Int(readLine()!)!
        print(pow(pow(2, N) + 1, 2))
    }

    // 메모리: 79508KB, 시간: 12ms, 코드 길이: 66B
    private func solution2() {
        let N = 1 << Int(readLine()!)! + 1
        print(N * N)
    }

    // 메모리: 69100KB, 시간: 8ms, 코드 길이: 113B
    private func solution3() {
        let N = Int(readLine()!)!
        var number = 1

        for _ in 0..<N {
            number *= 2
        }

        number += 1

        print(number * number)
    }
}
