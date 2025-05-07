//
//  10991.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 6/6/24.
//

//  문제 링크: https://www.acmicpc.net/problem/10991
//  알고리즘 분류: 구현

import Shared

public struct BOJ10991: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69100KB, 시간: 8ms, 코드 길이: 155B
        let N = Int(readLine()!)!
        let pattern = "* "

        for idx in 1...N {
            print(String(repeating: " ", count: N-idx) + String(repeating: pattern, count: idx))
        }
    }
}
