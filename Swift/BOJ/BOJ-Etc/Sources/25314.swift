//
//  25314.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/02/26.
//

// 문제: https://www.acmicpc.net/problem/25314

import Shared

public struct BOJ25314: Solvable {
    public init() {}

    public func run() {
        solution1()
    }

    // 메모리: 69100KB, 시간: 8ms, 코드 길이: 117B
    private func solution1() {
        let N = Int(readLine()!)!
        var result = ""

        for _ in 0..<N/4 {
            result += "long "
        }

        result += "int"

        print(result)
    }

    // 메모리: 69100KB, 시간: 8ms, 코드 길이: 69B
    private func solution2() {
        print(String(repeating: "long ", count: Int(readLine()!)!/4) + "int")
    }
}
