//
//  1980.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/09/13.
//

//  문제 링크: https://www.acmicpc.net/problem/1980
//  알고리즘 분류: 수학, 구현, 브루트포스 알고리즘

import Shared

public struct BOJ1980: Solvable {
    public init() {}

    public func run() {
        solution1()
    }

    // 메모리: 69104KB, 시간: 8ms, 코드 길이: 520B
    private func solution1() {
        let input = readLine()!.split(separator: " ").map { Int(String($0))! }
        let (n, m) = (input[0], input[1])
        var coke = input[2]
        var sum = 0

        for alpha in stride(from: input[2] / n, through: 0, by: -1) {
            for beta in stride(from: input[2] / m, through: 0, by: -1) {
                let oper = n * alpha + m * beta

                if (input[2] - oper < coke && input[2] - oper >= 0) || (input[2] - oper == coke && alpha + beta > sum) {
                    sum = alpha + beta
                    coke = input[2] - oper
                }
            }
        }

        print(sum, coke)
    }

    // 메모리: 69104KB, 시간: 8ms, 코드 길이: 559B
    private func solution2() {
        let input = readLine()!.split(separator: " ").map { Int(String($0))! }
        let (n, m) = (min(input[0], input[1]), max(input[0], input[1]))
        var eating = [(alpha: Int, beta: Int, coke: Int)]()

        for beta in 0...input[2]/m {
            let alpha = (input[2] - beta * m) / n
            let coke = (input[2] - beta * m) % n
            eating.append((alpha, beta, coke))
        }

        let result = eating.min { lhs, rhs in
            if lhs.coke == rhs.coke {
                return lhs.alpha + lhs.beta > rhs.alpha + rhs.beta
            }

            return lhs.coke < rhs.coke
        }

        print(result!.alpha + result!.beta, result!.coke)
    }
}
