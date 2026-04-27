//
//  1312.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/06/19.
//

// 문제: https://www.acmicpc.net/problem/1312

import Shared

public struct BOJ1312: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69104KB, 시간: 16ms, 코드 길이: 164B
        let input = readLine()!.split(separator: " ").map { Int(String($0))! }
        var a = input[0]
        let b = input[1]

        for _ in 0..<input[2] {
            a = a % b * 10
        }

        print(a / b)
    }
}
