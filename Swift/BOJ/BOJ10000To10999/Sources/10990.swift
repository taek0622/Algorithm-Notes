//
//  10990.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 6/17/24.
//

//  문제 링크: https://www.acmicpc.net/problem/10990
//  알고리즘 분류: 구현

import Shared

public struct BOJ10990: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69100KB, 시간: 8ms, 코드 길이: 247B
        let N = Int(readLine()!)!

        for idx in 1...N {
            if idx == 1 {
                print(String(repeating: " ", count: N-idx) + "*")
            } else {
                print(String(repeating: " ", count: N-idx) + "*" + String(repeating: " ", count: idx*2-3) + "*")
            }
        }
    }
}
