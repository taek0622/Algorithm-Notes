//
//  15917.swift
//  BOJ15000To15999
//
//  Created by 김민택 on 8/3/25.
//

//  문제 링크: https://www.acmicpc.net/problem/15917
//  알고리즘 분류: 수학, 구현

import Shared

public struct BOJ15917: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69104KB, 시간: 972ms, 코드 길이: 106B
        let Q = Int(readLine()!)!

        for _ in 0..<Q {
            let a = Int(readLine()!)!
            print(a & -a == a ? 1 : 0)
        }
    }
}
