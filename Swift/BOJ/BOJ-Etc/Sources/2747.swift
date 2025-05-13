//
//  2747.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/01/31.
//

// 문제: https://www.acmicpc.net/problem/2747

import Shared

public struct BOJ2747: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69100KB, 시간: 8ms, 코드 길이: 178B
        let n = Int(readLine()!)!
        var fibonacci = [0, 1]

        if n > 1 {
            for idx in 2...n {
                fibonacci.append(fibonacci[idx - 1] + fibonacci[idx - 2])
            }
        }

        print(fibonacci[n])
    }
}
