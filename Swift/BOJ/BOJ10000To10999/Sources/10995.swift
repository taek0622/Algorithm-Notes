//
//  10995.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 6/15/24.
//

//  문제 링크: https://www.acmicpc.net/problem/10995
//  알고리즘 분류: 구현

import Shared

public struct BOJ10995: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69100KB, 시간: 8ms, 코드 길이: 120B
        let N = Int(readLine()!)!

        for idx in 1...N {
            print((idx % 2 == 1 ? "" : " ") + String(repeating: "* ", count: N))
        }
    }
}
