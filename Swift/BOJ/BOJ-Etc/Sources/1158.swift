//
//  1158.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/08/25.
//

// 문제: https://www.acmicpc.net/problem/1158

import Shared

public struct BOJ1158: Solvable {
    public init() {}

    public func run() {
        solution1()
    }

    // 메모리: 69280KB, 시간: 12ms, 코드 길이: 382B
    private func solution1() {
        let input = readLine()!.split(separator: " ").map { Int(String($0))! }
        var array = Array(1...input[0])
        var result = [Int]()
        var idx = input[1] - 1

        while !array.isEmpty {
            result.append(array.remove(at: idx))
            idx += input[1]-1

            if idx >= array.count && array.count != 0 {
                idx %= array.count
            }
        }

        print("<\(result.map { String($0) }.joined(separator: ", "))>")
    }

    // 메모리: 69280KB, 시간: 12ms, 코드 길이: 382B
    private func solution2() {
        let input = readLine()!.split(separator: " ").map { Int(String($0))! }
        var array = Array(1...input[0])
        var result = [Int]()
        var idx = input[1] - 1

        while !array.isEmpty {
            if idx >= array.count {
                idx -= array.count
            } else {
                result.append(array.remove(at: idx))
                idx += input[1]-1
            }
        }

        print("<\(result.map { String($0) }.joined(separator: ", "))>")
    }
}
