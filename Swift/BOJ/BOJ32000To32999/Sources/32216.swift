//
//  32216.swift
//  BOJ32000To32999
//
//  Created by 김민택 on 11/23/25.
//

//  문제 링크: https://www.acmicpc.net/problem/32216
//  알고리즘 분류: 수학, 구현, 사칙연산

import Shared

public struct BOJ32216: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69104KB, 시간: 4ms, 코드 길이: 474B
        let nkT = readLine()!.split(separator: " ").map { Int($0)! }
        let d = readLine()!.split(separator: " ").map { Int($0)! }
        var (k, T, rate) = (nkT[1], nkT[2], 0)

        for idx in 0...nkT[0] {
            let diff = max(T - k, k - T)

            if idx != 0 {
                rate += diff
            }

            if idx != nkT[0] {
                if T > k {
                    T = T + d[idx] - diff
                } else if T < k {
                    T = T + d[idx] + diff
                } else {
                    T = T + d[idx]
                }
            }
        }

        print(rate)
    }
}
