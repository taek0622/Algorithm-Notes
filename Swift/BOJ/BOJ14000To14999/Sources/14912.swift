//
//  14912.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/08/04.
//

// 문제: https://www.acmicpc.net/problem/14912

import Shared

public struct BOJ14912: Solvable {
    public init() {}

    public func run() {
        solution2()
    }

    // 메모리: 69104KB, 시간: 64ms, 코드 길이: 209B
    private func solution1() {
        let input = readLine()!.split(separator: " ").map { String($0) }
        var count = 0

        for number in 1...Int(input[0])! {
            count += String(number).map { String($0) }.filter { $0 == input[1] }.count
        }

        print(count)
    }

    // 메모리: 69104KB, 시간: 12ms, 코드 길이: 264B
    private func solution2() {
        let input = readLine()!.split(separator: " ").map { Int(String($0))! }
        var count = 0

        for number in 1...input[0] {
            var num = number

            while num > 0 {
                if num % 10 == input[1] {
                    count += 1
                }

                num /= 10
            }
        }

        print(count)
    }
}
