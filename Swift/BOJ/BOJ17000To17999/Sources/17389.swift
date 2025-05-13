//
//  17389.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 8/27/24.
//

//  문제 링크: https://www.acmicpc.net/problem/17389
//  알고리즘 분류: 구현

import Shared

public struct BOJ17389: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69260KB, 시간: 8ms, 코드 길이: 230B
        let N = Int(readLine()!)!
        let S = Array(readLine()!)
        var (score, bonus) = (0, 0)

        for idx in 0..<N {
            if S[idx] == "O" {
                score += (idx + 1 + bonus)
                bonus += 1
            } else {
                bonus = 0
            }
        }

        print(score)
    }
}
