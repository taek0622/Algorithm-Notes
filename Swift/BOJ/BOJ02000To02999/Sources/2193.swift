//
//  2193.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/09/17.
//

//  문제 링크: https://www.acmicpc.net/problem/2193
//  알고리즘 분류: 다이나믹 프로그래밍

import Shared

public struct BOJ2193: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69100KB, 시간: 8ms, 코드 길이: 252B
        let N = Int(readLine()!)!

        if 1...2 ~= N {
            print(1)
        } else {
            var pinary = Array(repeating: 0, count: N)
            pinary[0...1] = [1, 1]

            for idx in 2...N-1 {
                pinary[idx] = pinary[idx - 1] + pinary[idx - 2]
            }

            print(pinary[N-1])
        }
    }
}
