//
//  2501.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/02/16.
//

// 문제: https://www.acmicpc.net/problem/2501

import Shared

public struct BOJ2501: Solvable {
    public init() {}

    public func run() {
        solution1()
    }

    // 메모리: 69104KB, 시간: 8ms, 코드 길이: 281B
    private func solution1() {
        let input = readLine()!.split(separator: " ").map { Int(String($0))! }
        var count = 0

        for number in 1...input[0] {
            if input[0] % number == 0 {
                count += 1
            }

            if count == input[1] {
                print(number)
                break
            }
        }

        if input[1] > count {
            print(0)
        }
    }

    // 메모리: 69112KB, 시간: 8ms, 코드 길이: 359B
    private func solution2() {
        let input = readLine()!.split(separator: " ").map { Int(String($0))! }
        var divisors = Set<Int>()
        var divisor = 1

        while divisor * divisor <= input[0] {
            if input[0] % divisor == 0 {
                divisors.insert(divisor)
                divisors.insert(input[0] / divisor)
            }

            divisor += 1
        }

        print(divisors.count < input[1] ? 0 : divisors.sorted()[input[1] - 1])
    }
}
