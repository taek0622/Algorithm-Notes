//
//  23810.swift
//  BOJ23000To23999
//
//  Created by 김민택 on 9/2/25.
//

//  문제 링크: https://www.acmicpc.net/problem/23810
//  알고리즘 분류: 구현

import Shared

public struct BOJ23810: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69100KB, 시간: 12ms, 코드 길이: 287B
        let N = Int(readLine()!)!

        for _ in 0..<N {
            print(String(repeating: "@", count: N*5))
        }

        for _ in 0..<N {
            print(String(repeating: "@", count: N))
        }

        for _ in 0..<N {
            print(String(repeating: "@", count: N*5))
        }

        for _ in 0..<N*2 {
            print(String(repeating: "@", count: N))
        }
    }
}
