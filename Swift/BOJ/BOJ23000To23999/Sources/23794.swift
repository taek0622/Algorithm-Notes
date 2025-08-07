//
//  23794.swift
//  BOJ23000To23999
//
//  Created by 김민택 on 8/7/25.
//

//  문제 링크: https://www.acmicpc.net/problem/23794
//  알고리즘 분류: 구현

import Shared

public struct BOJ23794: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69100KB, 시간: 8ms, 코드 길이: 186B
        let N = Int(readLine()!)!
        print(String(repeating: "@", count: N+2))

        for _ in 0..<N {
            print("@" + String(repeating: " ", count: N) + "@")
        }

        print(String(repeating: "@", count: N+2))
    }
}
