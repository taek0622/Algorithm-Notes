//
//  2959.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/06/04.
//

// 문제: https://www.acmicpc.net/problem/2959

import Shared

public struct BOJ2959: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69108KB, 시간: 8ms, 코드 길이: 106B
        let input = readLine()!.split(separator: " ").map { Int(String($0))! }.sorted()
        print(input[0] * input[2])
    }
}
