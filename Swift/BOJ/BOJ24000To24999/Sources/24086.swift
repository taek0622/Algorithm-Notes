//
//  24086.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/07/09.
//

// 문제: https://www.acmicpc.net/problem/24086

import Shared

public struct BOJ24086: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69100KB, 시간: 8ms, 코드 길이: 64B
        let (A, B) = (Int(readLine()!)!, Int(readLine()!)!)
        print(B - A)
    }
}
