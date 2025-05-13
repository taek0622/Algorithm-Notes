//
//  4375.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/06/25.
//

// 문제: https://www.acmicpc.net/problem/4375

import Shared

public struct BOJ4375: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69100KB, 시간: 8ms, 코드 길이: 210B
        while let input = readLine(), let n = Int(input) {
            var (count, target) = (1, 1)

            while target % n != 0 {
                count += 1
                target = target * 10 + 1
                target %= n
            }

            print(count)
        }
    }
}
