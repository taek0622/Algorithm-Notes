//
//  8393.swift
//  Swift
//
//  Created by 김민택 on 2022/05/13.
//

// 문제: https://www.acmicpc.net/problem/8393

import Shared

public struct BOJ8393: Solvable {
    public init() {}

    public func run() {
        solution2()
    }

    // 메모리: 69100KB, 시간: 8ms, 코드 길이: 100B
    private func solution1() {
        let input = Int(readLine()!)!

        var result = 0

        for i in 1...input {
            result += i
        }

        print(result)
    }

    // 메모리: 69100KB, 시간: 8ms, 코드 길이: 66B
    private func solution2() {
        let input = Int(readLine()!)!

        print("\(input * (input + 1) / 2)")
    }
}
