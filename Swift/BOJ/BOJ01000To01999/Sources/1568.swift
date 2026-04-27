//
//  1568.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/05/18.
//

// 문제: https://www.acmicpc.net/problem/1568

import Shared

public struct BOJ1568: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69100KB, 시간: 8ms, 코드 길이: 148B
        var N = Int(readLine()!)!
        var K = 1
        var sec = 0

        while N != 0 {
            N -= K
            K += 1
            sec += 1

            if N < K {
                K = 1
            }
        }

        print(sec)
    }
}
