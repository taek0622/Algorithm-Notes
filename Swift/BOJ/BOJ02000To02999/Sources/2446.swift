//
//  2446.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 6/2/24.
//

//  문제 링크: https://www.acmicpc.net/problem/2446
//  알고리즘 분류: 구현

import Shared

public struct BOJ2446: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69100KB, 시간: 12ms, 코드 길이: 272B
        let N = Int(readLine()!)!

        for idx in stride(from: N, to: 1, by: -1) {
            print(String(repeating: " ", count: N-idx) + String(repeating: "*", count: idx*2-1))
        }

        for idx in 1...N {
            print(String(repeating: " ", count: N-idx) + String(repeating: "*", count: idx*2-1))
        }
    }
}
