//
//  2522.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 6/3/24.
//

//  문제 링크: https://www.acmicpc.net/problem/2522
//  알고리즘 분류: 구현

import Shared

public struct BOJ2522: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69100KB, 시간: 12ms, 코드 길이: 252B
        let N = Int(readLine()!)!

        for idx in 1..<N {
            print(String(repeating: " ", count: N-idx) + String(repeating: "*", count: idx))
        }

        for idx in (1...N).reversed() {
            print(String(repeating: " ", count: N-idx) + String(repeating: "*", count: idx))
        }
    }
}
