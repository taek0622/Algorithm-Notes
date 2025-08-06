//
//  10874.swift
//  BOJ10000To10999
//
//  Created by 김민택 on 8/6/25.
//

//  문제 링크: https://www.acmicpc.net/problem/10874
//  알고리즘 분류: 구현

import Shared

public struct BOJ10874: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69100KB, 시간: 8ms, 코드 길이: 105B
        let N = Int(readLine()!)!

        for idx in 1...N where readLine()! == "1 2 3 4 5 1 2 3 4 5" {
            print(idx)
        }
    }
}
