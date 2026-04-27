//
//  11021.swift
//  Swift
//
//  Created by 김민택 on 2022/05/16.
//

// 문제: https://www.acmicpc.net/problem/11021

import Shared

public struct BOJ11021: Solvable {
    public init() {}

    public func run() {
        solution2()
    }

    // 메모리: 69104KB, 시간: 12ms, 코드 길이: 174B
    private func solution1() {
        let input = Int(readLine()!)!

        for i in 0..<input {
            let num = readLine()!.split(separator: " ").map { Int(String($0))! }
            print("Case #\(i + 1): \(num[0] + num[1])")
        }
    }

    // 메모리: 69104KB, 시간: 8ms, 코드 길이: 175B
    private func solution2() {
        let input = Int(readLine()!)!

        for i in 0..<input {
            let num = readLine()!.split(separator: " ").map { Int(String($0))! }.reduce(0, +)
            print("Case #\(i + 1): \(num)")
        }
    }

    // 메모리: 69104KB, 시간: 12ms, 코드 길이: 153B
    private func solution3() {
        let input = Int(readLine()!)!

        for i in 1...input {
            print("Case #\(i): \(readLine()!.split(separator: " ").map { Int(String($0))! }.reduce(0, +))")
        }
    }
}
