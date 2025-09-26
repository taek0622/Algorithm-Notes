//
//  26645.swift
//  BOJ26000To26999
//
//  Created by 김민택 on 9/26/25.
//

//  문제 링크: https://www.acmicpc.net/problem/26645
//  알고리즘 분류: 구현

import Shared

public struct BOJ26645: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69100KB, 시간: 8ms, 코드 길이: 147B
        let N = Int(readLine()!)!
        let result = [min(N+8, 210), min(N+4, 220), min(N+2, 230), min(N+1, 240)]
        print(result.lastIndex(of: result.max()!)! + 1)
    }
}
