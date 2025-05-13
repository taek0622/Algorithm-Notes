//
//  5532.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/03/19.
//

// 문제: https://www.acmicpc.net/problem/5532

import Shared

public struct BOJ5532: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69100KB, 시간: 8ms, 코드 길이: 169B
        let L = Int(readLine()!)!
        let A = Int(readLine()!)!
        let B = Int(readLine()!)!
        let C = Int(readLine()!)!
        let D = Int(readLine()!)!

        print(L - (max((A-1)/C, (B-1)/D) + 1))
    }
}
