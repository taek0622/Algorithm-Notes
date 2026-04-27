//
//  3058.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/05/11.
//

// 문제: https://www.acmicpc.net/problem/3058

import Shared

public struct BOJ3058: Solvable {
    public init() {}

    public func run() {
        solution2()
    }

    // 메모리: 69104KB, 시간: 12ms, 코드 길이: 299B
    private func solution1() {
        let T = Int(readLine()!)!

        for _ in 0..<T {
            let input = readLine()!.split(separator: " ").map { Int(String($0))! }
            var sum = 0
            var min = 100

            for num in input where num % 2 == 0 {
                sum += num
                
                if num < min {
                    min = num
                }
            }

            print(sum, min)
        }
    }

    // 메모리: 69104KB, 시간: 12ms, 코드 길이: 188B
    private func solution2() {
        let T = Int(readLine()!)!

        for _ in 0..<T {
            let input = readLine()!.split(separator: " ").map { Int(String($0))! }.filter { $0 % 2 == 0 }

            print(input.reduce(0, +), input.min()!)
        }
    }
}
