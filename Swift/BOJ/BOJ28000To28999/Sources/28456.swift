//
//  28456.swift
//  BOJ28000To28999
//
//  Created by 김민택 on 5/10/25.
//

//  문제 링크: https://www.acmicpc.net/problem/28456
//  알고리즘 분류: 구현, 시뮬레이션

import Shared

public struct BOJ28456: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69500KB, 시간: 48ms, 코드 길이: 617B
        let N = Int(readLine()!)!
        var A = Array(repeating: Array(repeating: "", count: N), count: N)

        for row in 0..<N {
            A[row] = readLine()!.split(separator: " ").map { String($0) }
        }

        let Q = Int(readLine()!)!

        for _ in 0..<Q {
            let input = readLine()!.split(separator: " ").map { Int($0)! }

            if input[0] == 1 {
                A[input[1]-1].insert(A[input[1]-1].removeLast(), at: 0)
                continue
            }

            var newA = A

            for row in 0..<N {
                for col in 0..<N {
                    newA[col][N-1-row] = A[row][col]
                }
            }

            A = newA
        }

        print(A.map { $0.joined(separator: " ") }.joined(separator: "\n"))
    }
}

