//
//  29729.swift
//  BOJ29000To29999
//
//  Created by 김민택 on 10/7/25.
//

//  문제 링크: https://www.acmicpc.net/problem/29729
//  알고리즘 분류: 구현, 시뮬레이션

import Shared

public struct BOJ29729: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69104KB, 시간: 68ms, 코드 길이: 277B
        let SNM = readLine()!.split(separator: " ").map { Int($0)! }
        var (S, U) = (SNM[0], 0)

        for _ in 0..<SNM[1]+SNM[2] {
            let input = readLine()!

            if input == "0" {
                U -= 1
            } else {
                if S == U {
                    S *= 2
                }

                U += 1
            }
        }

        print(S)
    }
}
