//
//  17127.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 3/13/25.
//

//  문제 링크: https://www.acmicpc.net/problem/17127
//  알고리즘 분류: 구현, 브루트포스 알고리즘

import Shared

public struct BOJ17127: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69104KB, 시간: 4ms, 코드 길이: 451B
        let N = Int(readLine()!)!
        let A = readLine()!.split(separator: " ").map { Int($0)! }
        var maxP = 0

        for group1 in 0..<N-3 {
            let P1 = A[...group1].reduce(1, *)

            for group2 in group1+1..<N-2 {
                let P2 = A[group1+1...group2].reduce(1, *)

                for group3 in group2+1..<N-1 {
                    let sum = P1 + P2 + A[group2+1...group3].reduce(1, *) + A[(group3+1)...].reduce(1, *)
                    maxP = max(maxP, sum)
                }
            }
        }

        print(maxP)
    }
}
