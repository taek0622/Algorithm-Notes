//
//  18301.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/06/01.
//

// 문제: https://www.acmicpc.net/problem/18301

import Shared

public struct BOJ18301: Solvable {
    public init() {}

    public func run() {
        solution1()
    }

    // 메모리: 69100KB, 시간: 8ms, 코드 길이: 124B
    private func solution1() {
        let input = readLine()!.split(separator: " ").map { Double(String($0))! + 1 }
        print(Int(input[0] * input[1] / input[2] - 1))
    }

    // 메모리: 69104KB, 시간: 8ms, 코드 길이: 116B
    private func solution2() {
        let input = readLine()!.split(separator: " ").map { Int(String($0))! + 1 }
        print(input[0] * input[1] / input[2] - 1)
    }
}
