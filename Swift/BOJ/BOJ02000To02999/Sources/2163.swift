//
//  2163.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/07/03.
//

// 문제: https://www.acmicpc.net/problem/2163

import Shared

public struct BOJ2163: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69104KB, 시간: 8ms, 코드 길이: 100B
        let input = readLine()!.split(separator: " ").map { Int(String($0))! }.reduce(1, *)
        print(input - 1)
    }
}
