//
//  2506.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/03/20.
//

// 문제: https://www.acmicpc.net/problem/2506

import Shared

public struct BOJ2506: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69104KB, 시간: 8ms, 코드 길이: 260B
        let N = Int(readLine()!)!
        let scores = readLine()!.split(separator: " ").map { Int(String($0))! }
        var count = 0
        var total = 0

        for score in scores {
            if score == 1 {
                count += 1
            } else {
                count = 0
            }

            total += count
        }

        print(total)
    }
}
