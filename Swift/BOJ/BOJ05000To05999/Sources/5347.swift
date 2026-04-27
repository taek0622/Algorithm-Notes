//
//  5347.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/07/14.
//

// 문제: https://www.acmicpc.net/problem/5347

import Shared

public struct BOJ5347: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69104KB, 시간: 8ms, 코드 길이: 389B
        let n = Int(readLine()!)!

        for _ in 0..<n {
            let input = readLine()!.split(separator: " ").map { Int(String($0))! }
            print(input[0] * input[1] / generateGCD(input[0], input[1]))
        }

        func generateGCD(_ baseNumber: Int, _ targetNumber: Int) -> Int {
            if targetNumber % baseNumber == 0 {
                return baseNumber
            }

            return generateGCD(targetNumber % baseNumber, baseNumber)
        }
    }
}
