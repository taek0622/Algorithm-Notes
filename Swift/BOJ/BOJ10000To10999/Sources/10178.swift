//
//  10178.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/05/20.
//

// 문제: https://www.acmicpc.net/problem/10178

import Shared

public struct BOJ10178: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69104KB, 시간: 8ms, 코드 길이: 224B
        let T = Int(readLine()!)!

        for _ in 0..<T {
            let input = readLine()!.split(separator: " ").map { Int(String($0))! }
            print("You get \(input[0] / input[1]) piece(s) and your dad gets \(input[0] % input[1]) piece(s).")
        }
    }
}
