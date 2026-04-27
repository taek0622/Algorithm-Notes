//
//  1978.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2022/12/30.
//

// 문제: https://www.acmicpc.net/problem/1978

import Shared

public struct BOJ1978: Solvable {
    public init() {}

    public func run() {
        solution2()
    }

    // 메모리: 69104KB, 시간: 8ms, 코드 길이: 408B
    private func solution1() {
        let count = Int(readLine()!)!
        let numbers = readLine()!.split(separator: " ").map { Int(String($0))! }
        var result = 0

        for idx in 0..<count {
            var divisorCount = 0
            if numbers[idx] > 1 {
                for num in 1...numbers[idx]/2 {
                    if numbers[idx] % num == 0 {
                        divisorCount += 1
                    }
                }
            }

            if divisorCount == 1 {
                result += 1
            }
        }

        print(result)
    }

    // 메모리: 69104KB, 시간: 8ms, 코드 길이: 373B
    private func solution2() {
        let count = Int(readLine()!)!
        let numbers = readLine()!.split(separator: " ").map { Int(String($0))! }
        var result = 0

        numbers.forEach {
            var divisorCount = 0
            if $0 > 1 {
                for num in 1...$0/2 {
                    if $0 % num == 0 {
                        divisorCount += 1
                    }
                }
            }

            if divisorCount == 1 {
                result += 1
            }
        }

        print(result)
    }
}
