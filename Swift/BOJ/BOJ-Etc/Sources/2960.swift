//
//  2960.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/03/12.
//

// 문제: https://www.acmicpc.net/problem/2960

class BOJ2960: Solvable {
    func run() {
        solution2()
    }

    // 메모리: 69108KB, 시간: 8ms, 코드 길이: 394B
    private func solution1() {
        var input = readLine()!.split(separator: " ").map { Int(String($0))! }
        var numbers = Set(2...input[0])

        outer: for divisor in 2...input[0] {
            for number in stride(from: divisor, through: input[0], by: divisor) where numbers.contains(number) {
                numbers.remove(number)
                input[1] -= 1

                if input[1] == 0 {
                    print(number)
                    break outer
                }
            }
        }
    }

    // 메모리: 69104KB, 시간: 8ms, 코드 길이: 400B
    private func solution2() {
        var input = readLine()!.split(separator: " ").map { Int(String($0))! }
        var numbers = Array(repeating: true, count: input[0] + 1)

        outer: for divisor in 2...input[0] {
            for idx in stride(from: divisor, through: input[0], by: divisor) where numbers[idx] {
                numbers[idx] = false
                input[1] -= 1

                if input[1] == 0 {
                    print(idx)
                    break outer
                }
            }
        }
    }
}
