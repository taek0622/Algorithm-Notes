//
//  2566.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/01/02.
//

// 문제: https://www.acmicpc.net/problem/2566

import Shared

public struct BOJ2566: Solvable {
    public init() {}

    public func run() {
        solution3()
    }

    // 메모리: 69104KB, 시간: 8ms, 코드 길이: 312B
    private func solution1() {
        var maxNum = 0
        var maxIndex = (1, 1)

        for line in 1...9 {
            let input = readLine()!.split(separator: " ").map { Int(String($0))! }

            if input.max()! > maxNum {
                maxNum = input.max()!
                maxIndex = (line, input.firstIndex(of: maxNum)! + 1)
            }
        }

        print("\(maxNum)\n\(maxIndex.0) \(maxIndex.1)")
    }

    // 메모리: 69104KB, 시간: 8ms, 코드 길이: 286B
    private func solution2() {
        var maxNum = (0, 1, 1)

        for line in 1...9 {
            let input = readLine()!.split(separator: " ").map { Int(String($0))! }

            if input.max()! > maxNum.0 {
                maxNum = (input.max()!, line, input.firstIndex(of: input.max()!)! + 1)
            }
        }

        print("\(maxNum.0)\n\(maxNum.1) \(maxNum.2)")
    }

    // Apahfl: 69104KB, 시간: 8ms, 코드 길이: 311B
    private func solution3() {
        var (maxNum, row, column) = (0, 1, 1)

        for line in 1...9 {
            let input = readLine()!.split(separator: " ").map { Int(String($0))! }

            if input.max()! > maxNum {
                maxNum = input.max()!
                row = line
                column = input.firstIndex(of: maxNum)! + 1
            }
        }

        print("\(maxNum)\n\(row) \(column)")
    }
}
