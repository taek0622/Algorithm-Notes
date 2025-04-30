//
//  2869.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2022/12/27.
//

// 문제: https://www.acmicpc.net/problem/2869

import Foundation

class BOJ2869: Solvable {
    func run() {
        solution2()
    }

    // 메모리: 79512KB, 시간: 12ms, 코드 길이: 190B
    private func solution1() {
        let input = readLine()!.split(separator: " ").map { Int(String($0))! }

        let A = input[0]
        let B = input[1]
        let V = input[2]

        print(Int(ceil(Double(V - B) / Double(A - B))))
    }

    // 메모리: 69104KB, 시간: 8ms, 코드 길이: 234B
    private func solution2() {
        let input = readLine()!.split(separator: " ").map { Int(String($0))! }

        let A = input[0]
        let B = input[1]
        let V = input[2]

        let quotient = (V - B) / (A - B)
        let remainder = (V - B) % (A - B)

        print(quotient + (remainder != 0 ? 1 : 0))
    }
}
