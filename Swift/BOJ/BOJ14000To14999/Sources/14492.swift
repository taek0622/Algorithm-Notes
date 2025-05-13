//
//  14492.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 1/23/25.
//

//  문제 링크: https://www.acmicpc.net/problem/14492
//  알고리즘 분류: 수학, 구현, 선형대수학

import Shared

public struct BOJ14492: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69332KB, 시간: 96ms, 코드 길이: 517B
        let N = Int(readLine()!)!
        var A = Array(repeating: Array(repeating: false, count: N), count: N)
        var B = A
        var count = 0

        for idx in 0..<N {
            A[idx] = readLine()!.split(separator: " ").map { $0 == "1" }
        }

        for idx in 0..<N {
            B[idx] = readLine()!.split(separator: " ").map { $0 == "1" }
        }

        for row in 0..<N {
            for col in 0..<N {
                var C = false

                for idx in 0..<N {
                    C = C || (A[row][idx] && B[idx][col])
                }

                if C {
                    count += 1
                }
            }
        }

        print(count)
    }
}
