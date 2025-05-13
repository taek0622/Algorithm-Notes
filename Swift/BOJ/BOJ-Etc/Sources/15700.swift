//
//  15700.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/07/01.
//

// 문제: https://www.acmicpc.net/problem/15700

import Shared

public struct BOJ15700: Solvable {
    public init() {}

    public func run() {
        let input = readLine()!.split(separator: " ").map { Int(String($0))! }.reduce(1, *)
        print(input / 2)
    }
}
