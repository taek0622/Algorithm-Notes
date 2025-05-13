//
//  1598.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/06/06.
//

// 문제: https://www.acmicpc.net/problem/1598

import Shared

public struct BOJ1598: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69104KB, 시간: 8ms, 코드 길이: 149B
        let input = readLine()!.split(separator: " ").map { Int(String($0))! - 1 }
        print(abs(input[0] % 4 - input[1] % 4) + abs(input[1] / 4 - input[0] / 4))
    }
}
