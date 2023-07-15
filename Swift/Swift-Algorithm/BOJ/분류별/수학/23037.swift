//
//  23037.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/07/15.
//

// 문제: https://www.acmicpc.net/problem/23037

import Foundation

class BOJ23037: Solvable {
    func run() {
        solution4()
    }

    // 메모리: 79504KB, 시간: 12ms, 코드 길이: 109B
    private func solution1() {
        let input = readLine()!.map { pow(Double(String($0))!, 5) }.reduce(0, +)
        print(Int(input))
    }

    // 메모리: 69100KB, 시간: 8ms, 코드 길이: 153B
    private func solution2() {
        let input = readLine()!.map { Int(String($0))! }
        var sum = 0

        for number in input {
            sum += (number * number * number * number * number)
        }

        print(sum)
    }

    // 메모리: 69100KB, 시간: 8ms, 코드 길이: 150B
    private func solution3() {
        let input = readLine()!.map { Int(String($0))! * Int(String($0))! * Int(String($0))! * Int(String($0))! * Int(String($0))! }.reduce(0, +)
        print(input)
    }

    // 메모리: 69100KB, 시간: 8ms, 코드 길이: 104B
    private func solution4() {
        let input = readLine()!.map { Int(String($0))! }.map{ $0 * $0 * $0 * $0 * $0 }.reduce(0, +)
        print(input)
    }
}
