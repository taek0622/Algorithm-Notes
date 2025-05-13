//
//  2475.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/01/25.
//

//  문제 링크: https://www.acmicpc.net/problem/2475
//  알고리즘 분류: 수학, 구현, 사칙연산

import Shared

public struct BOJ2475: Solvable {
    public init() {}

    public func run() {
        solution2()
    }

    // 메모리: 69104KB, 시간: 8ms, 코드 길이: 155B
    private func solution1() {
        let serial = readLine()!.split(separator: " ").map { Int(String($0))! }
        var sum = 0

        for number in serial {
            sum += (number * number)
        }

        print(sum % 10)
    }

    // 메모리: 69104KB, 시간: 12ms, 코드 길이: 123B
    private func solution2() {
        let serial = readLine()!.split(separator: " ").map { Int(String($0))! * Int(String($0))! }.reduce(0, +)

        print(serial % 10)
    }
}
