//
//  13015.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 12/9/24.
//

//  문제 링크: https://www.acmicpc.net/problem/13015
//  알고리즘 분류: 구현

import Shared

public struct BOJ13015: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69100KB, 시간: 8ms, 코드 길이: 857B
        let N = Int(readLine()!)!
        print(String(repeating: "*", count: N) + String(repeating: " ", count: (N-2)*2+1) + String(repeating: "*", count: N))

        for idx in 1..<N-1 {
            print(String(repeating: " ", count: idx) + "*" + String(repeating: " ", count: N-2) + "*" + String(repeating: " ", count: (N-2-idx)*2+1) + "*" + String(repeating: " ", count: N-2) + "*")
        }

        print(String(repeating: " ", count: N-1) + "*" + String(repeating: " ", count: N-2) + "*" + String(repeating: " ", count: N-2) + "*")

        for idx in stride(from: N-2, through: 1, by: -1) {
            print(String(repeating: " ", count: idx) + "*" + String(repeating: " ", count: N-2) + "*" + String(repeating: " ", count: (N-2-idx)*2+1) + "*" + String(repeating: " ", count: N-2) + "*")
        }

        print(String(repeating: "*", count: N) + String(repeating: " ", count: (N-2)*2+1) + String(repeating: "*", count: N))
    }
}
