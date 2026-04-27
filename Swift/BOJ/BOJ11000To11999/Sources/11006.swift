//
//  11006.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/07/07.
//

// 문제: https://www.acmicpc.net/problem/11006

import Shared

public struct BOJ11006: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69104KB, 시간: 8ms, 코드 길이: 190B
        let T = Int(readLine()!)!

        for _ in 0..<T {
            let input = readLine()!.split(separator: " ").map { Int(String($0))! }
            let U = input[1] * 2 - input[0]
            print("\(U) \(input[1] - U)")
        }
    }
}
