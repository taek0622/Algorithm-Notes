//
//  15727.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/04/19.
//

// 문제: https://www.acmicpc.net/problem/15727

import Shared

public struct BOJ15727: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69100KB, 시간: 8ms, 코드 길이: 63B
        let t = Int(readLine()!)!
        print(t % 5 == 0 ? t / 5 : t / 5 + 1)
    }
}
