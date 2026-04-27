//
//  27866.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/03/28.
//
// 문제: https://www.acmicpc.net/problem/27866

import Shared

public struct BOJ27866: Solvable {
    public init() {}

    public func run() {
        solution2()
    }

    // 메모리: 69100KB, 시간: 8ms, 코드 길이: 66B
    private func solution1() {
        let S = Array(readLine()!)
        let i = Int(readLine()!)!
        print(S[i-1])
    }

    // 메모리: 69100KB, 시간: 8ms, 코드 길이: 46B
    private func solution2() {
        print(Array(readLine()!)[Int(readLine()!)!-1])
    }
}
