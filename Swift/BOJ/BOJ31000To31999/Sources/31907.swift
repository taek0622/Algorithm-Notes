//
//  31907.swift
//  BOJ31000To31999
//
//  Created by 김민택 on 10/15/25.
//

//  문제 링크: https://www.acmicpc.net/problem/31907
//  알고리즘 분류: 구현, 문자열

import Shared

public struct BOJ31907: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69100KB, 시간: 12ms, 코드 길이: 431B
        let K = Int(readLine()!)!

        for _ in 0..<K {
            print(String(repeating: "G", count: K) + String(repeating: ".", count: K*3))
        }

        for _ in 0..<K {
            print(String(repeating: ".", count: K) + String(repeating: "I", count: K) + String(repeating: ".", count: K) + String(repeating: "T", count: K))
        }

        for _ in 0..<K {
            print(String(repeating: ".", count: K*2) + String(repeating: "S", count: K) + String(repeating: ".", count: K))
        }
    }
}
