//
//  3460.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/04/18.
//

// 문제: https://www.acmicpc.net/problem/3460

import Shared

public struct BOJ3460: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69100KB, 시간: 8ms, 코드 길이: 237B
        let T = Int(readLine()!)!

        for _ in 0..<T {
            let number = Array(String(String(Int(readLine()!)!, radix: 2).reversed()))
            for idx in 0..<number.count where number[idx] == "1" {
                print(idx, terminator: " ")
            }
            print()
        }
    }
}
