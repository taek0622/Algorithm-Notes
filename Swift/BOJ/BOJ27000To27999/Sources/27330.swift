//
//  27330.swift
//  BOJ27000To27999
//
//  Created by 김민택 on 12/19/25.
//

//  문제 링크: https://www.acmicpc.net/problem/27330
//  알고리즘 분류: 구현, 시뮬레이션

import Shared

public struct BOJ27330: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69108KB, 시간: 8ms, 코드 길이: 285B
        let N = Int(readLine()!)!
        let A = readLine()!.split(separator: " ").map { Int($0)! }
        _ = readLine()
        let B = Set(readLine()!.split(separator: " ").map { Int($0)! })
        var score = 0

        for idx in 0..<N {
            score += A[idx]

            if B.contains(score) {
                score = 0
            }
        }

        print(score)
    }
}
