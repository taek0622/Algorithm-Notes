//
//  23809.swift
//  BOJ23000To23999
//
//  Created by 김민택 on 9/16/25.
//

//  문제 링크: https://www.acmicpc.net/problem/23809
//  알고리즘 분류: 구현

import Shared

public struct BOJ23809: Solvable {
    public init() {}

    public func run() {
        let N = Int(readLine()!)!

        for _ in 0..<N {
            print(String(repeating: "@", count: N) + String(repeating: " ", count: N*3) + String(repeating: "@", count: N))
        }

        for _ in 0..<N {
            print(String(repeating: "@", count: N) + String(repeating: " ", count: N*2) + String(repeating: "@", count: N))
        }

        for _ in 0..<N {
            print(String(repeating: "@", count: N*3))
        }

        for _ in 0..<N {
            print(String(repeating: "@", count: N) + String(repeating: " ", count: N*2) + String(repeating: "@", count: N))
        }

        for _ in 0..<N {
            print(String(repeating: "@", count: N) + String(repeating: " ", count: N*3) + String(repeating: "@", count: N))
        }
    }
}
