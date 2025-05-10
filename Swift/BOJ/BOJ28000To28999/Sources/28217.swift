//
//  28217.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 4/4/25.
//

//  문제 링크: https://www.acmicpc.net/problem/28217
//  알고리즘 분류: 구현

import Shared

public struct BOJ28217: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69108KB, 시간: 8ms, 코드 길이: 1089B
        let N = Int(readLine()!)!
        var A = Array(repeating: [Int](), count: N)
        var B = A
        var minDiff = N * N

        for row in 0..<N {
            A[row] = readLine()!.split(separator: " ").map { Int($0)! }
        }

        for row in 0..<N {
            B[row] = readLine()!.split(separator: " ").map { Int($0)! }
        }

        for _ in 0..<3 {
            minDiff = min(minDiff, compare(A, B))
            A = rotate(A)
        }

        A = symmetry(A)

        for _ in 0..<3 {
            minDiff = min(minDiff, compare(A, B))
            A = rotate(A)
        }

        print(minDiff)

        func rotate(_ tri: [[Int]]) -> [[Int]] {
            var new = tri

            for row in 0..<N {
                for col in 0..<row+1 {
                    new[N-1-row+col][N-1-row] = tri[row][col]
                }
            }

            return new
        }

        func symmetry(_ tri: [[Int]]) -> [[Int]] {
            var new = tri

            for row in 0..<N {
                for col in 0..<(row+1)/2 {
                    new[row].swapAt(col, row-col)
                }
            }

            return new
        }

        func compare(_ base: [[Int]], _ comp: [[Int]]) -> Int {
            var diff = 0

            for row in 0..<N {
                for col in 0..<row+1 where base[row][col] != comp[row][col] {
                    diff += 1
                }
            }

            return diff
        }
    }
}
