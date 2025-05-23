//
//  16237.swift
//  BOJ16000To16999
//
//  Created by 김민택 on 5/23/25.
//

//  문제 링크: https://www.acmicpc.net/problem/16237
//  알고리즘 분류: 수학, 구현, 그리디 알고리즘

import Shared

public struct BOJ16237: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69104KB, 시간: 8ms, 코드 길이: 362B
        let ABCDE = readLine()!.split(separator: " ").map { Int($0)! }
        var (A, B, C, count) = (ABCDE[0], ABCDE[1], ABCDE[2], ABCDE[4])

        count += ABCDE[3]
        A = max(A - ABCDE[3], 0)

        count += C
        B = max(B - C, 0)
        C = max(C - ABCDE[1], 0)
        A = max(A - C * 2, 0)

        count += B / 2 + B % 2
        A = max(A - B / 2, 0)

        if B % 2 == 1 {
            A = max(0, A - 3)
        }

        print(count + (A + 4) / 5)
    }
}
