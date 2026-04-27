//
//  1748.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/03/16.
//

// 문제: https://www.acmicpc.net/problem/1748

import Foundation

import Shared

public struct BOJ1748: Solvable {
    public init() {}

    public func run() {
        solution2()
    }

    // 메모리: 79508KB, 시간: 12ms, 코드 길이: 290B
    private func solution1() {
        let N = Int(readLine()!)!
        var count = 0
        var number = N
        var sum = 0

        while number > 0 {
            number /= 10
            count += 1
        }

        sum += (N - Int(pow(10.0, Double(count - 1))) + 1) * count

        for idx in 1..<count {
            sum += 9 * Int(pow(10.0, Double(idx - 1))) * idx
        }

        print(sum)
    }

    // 메모리: 69100KB, 시간: 8ms, 코드 길이: 128B
    private func solution2() {
        let N = Int(readLine()!)!
        var count = 1
        var sum = 0

        while N >= count {
            sum += (N - count) + 1
            count *= 10
        }

        print(sum)
    }
}
