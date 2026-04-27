//
//  2609.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/01/12.
//

// 문제: https://www.acmicpc.net/problem/2609

import Shared

public struct BOJ2609: Solvable {
    public init() {}

    public func run() {
        solution2()
    }

    // 메모리: 69104KB, 시간: 12ms, 코드 길이: 302B
    private func solution1() {
        let numbers = readLine()!.split(separator: " ").map { Int(String($0))! }
        var divisor = 0

        var count = 1
        while count <= numbers.min()! {
            if numbers[0] % count == 0 && numbers[1] % count == 0 {
                divisor = count
            }

            count += 1
        }

        print("\(divisor)\n\(numbers[0] * numbers[1] / divisor)")
    }

    // 메모리: 69104KB, 시간: 8ms, 코드 길이: 333B
    private func solution2() {
        let numbers = readLine()!.split(separator: " ").map { Int(String($0))! }

        let result = divisor(numbers[0], numbers[1])

        print("\(result)\n\(numbers[0] * numbers[1] / result)")

        func divisor(_ num1: Int, _ num2: Int) -> Int {
            if num1 % num2 == 0 {
                return num2
            } else {
                return divisor(num2, num1 % num2)
            }
        }
    }
}
