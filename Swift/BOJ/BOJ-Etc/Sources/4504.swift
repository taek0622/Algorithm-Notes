//
//  4504.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/05/17.
//

// 문제: https://www.acmicpc.net/problem/4504

import Shared

public struct BOJ4504: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69100KB, 시간: 8ms, 코드 길이: 147B
        let n = Int(readLine()!)!

        while let num = readLine(), num != "0" {
            print("\(num) is \(Int(num)! % n == 0 ? "" : "NOT ")a multiple of \(n).")
        }
    }
}
