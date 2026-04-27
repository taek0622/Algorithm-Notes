//
//  17103.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/04/07.
//

// 문제: https://www.acmicpc.net/problem/17103

import Shared

public struct BOJ17103: Solvable {
    public init() {}

    public func run() {
        // 메모리: 70080KB, 시간: 76ms, 코드 길이: 470B
        let T = Int(readLine()!)!
        var primes = Array(repeating: true, count: 1000001)

        primes[0...1] = [false, false]

        for number in 2...1000000 where primes[number] {
            for idx in stride(from: number * number, through: 1000000, by: number) {
                primes[idx] = false
            }
        }

        for _ in 0..<T {
            let N = Int(readLine()!)!
            var count = 0

            for idx in 2...N/2 where primes[idx] {
                if primes[N - idx] {
                    count += 1
                }
            }

            print(count)
        }
    }
}
