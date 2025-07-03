//
//  5217.swift
//  BOJ05000To05999
//
//  Created by 김민택 on 7/3/25.
//

//  문제 링크: https://www.acmicpc.net/problem/5217
//  알고리즘 분류: 구현

import Shared

public struct BOJ5217: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69100KB, 시간: 8ms, 코드 길이: 304B
        let T = Int(readLine()!)!

        for _ in 0..<T {
            let n = Int(readLine()!)!
            var add = [(Int, Int)]()

            for num in stride(from: 1, through: n/2, by: 1) where num != n-num {
                add.append((num, n-num))
            }

            print("Pairs for \(n): \(add.map { "\($0.0) \($0.1)" }.joined(separator: ", "))")
        }
    }
}
