//
//  15734.swift
//  BOJ15000To15999
//
//  Created by 김민택 on 8/20/25.
//

//  문제 링크: https://www.acmicpc.net/problem/15734
//  알고리즘 분류: 수학, 구현, 사칙연산

import Shared

public struct BOJ15734: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69104KB, 시간: 8ms, 코드 길이: 215B
        var LRA = readLine()!.split(separator: " ").map { Int($0)! }

        while LRA[2] > 0 {
            if LRA[0] > LRA[1] {
                LRA[1] += 1
            } else {
                LRA[0] += 1
            }

            LRA[2] -= 1
        }

        print(min(LRA[0], LRA[1]) * 2)
    }
}
