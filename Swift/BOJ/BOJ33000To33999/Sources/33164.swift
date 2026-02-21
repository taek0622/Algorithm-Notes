//
//  33164.swift
//  BOJ33000To33999
//
//  Created by 김민택 on 2/21/26.
//

//  문제 링크: https://www.acmicpc.net/problem/33164
//  알고리즘 분류: 수학, 구현, 브루트포스 알고리즘, 사칙연산

import Shared

public struct BOJ33164: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69104KB, 시간: 4ms, 코드 길이: 309B
        let NM = readLine()!.split(separator: " ").map { Int($0)! }
        let A = readLine()!.split(separator: " ").map { Int($0)! }
        let B = readLine()!.split(separator: " ").map { Int($0)! }
        var score = 0

        for i in 0..<NM[0] {
            for j in 0..<NM[1] {
                score += (A[i] + B[j]) * max(A[i], B[j])
            }
        }

        print(score)
    }
}
