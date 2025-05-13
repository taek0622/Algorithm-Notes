//
//  1977.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/02/15.
//

// 문제: https://www.acmicpc.net/problem/1977

import Foundation

import Shared

public struct BOJ1977: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69100KB, 시간: 8ms, 코드 길이: 397B
        let M = Int(readLine()!)!
        let N = Int(readLine()!)!
        var numbers = Array(repeating: false, count: 10001)

        var divisor = 1

        while divisor <= 100 {
            numbers[divisor * divisor] = true
            divisor += 1
        }

        var sum = 0
        var minNumber = 10000

        for idx in M...N where numbers[idx] {
            if minNumber > idx {
                minNumber = idx
            }

            sum += idx
        }

        print(sum != 0 ? "\(sum)\n\(minNumber)" : "-1")
    }
}
