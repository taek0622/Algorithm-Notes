//
//  10992.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 6/8/24.
//

//  문제 링크: https://www.acmicpc.net/problem/10992
//  알고리즘 분류: 구현

import Shared

public struct BOJ10992: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69100KB, 시간: 8ms, 코드 길이: 324B
        let N = Int(readLine()!)!

        for idx in 1...N {
            if idx == 1 {
                print(String(repeating: " ", count: N-idx) + "*")
            } else if idx == N {
                print(String(repeating: "*", count: N*2-1))
            } else {
                print(String(repeating: " ", count: N-idx) + "*" + String(repeating: " ", count: idx*2-3) + "*")
            }
        }
    }
}
