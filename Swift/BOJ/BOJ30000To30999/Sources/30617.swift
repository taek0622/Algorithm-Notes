//
//  30617.swift
//  BOJ30000To30999
//
//  Created by 김민택 on 11/3/25.
//

//  문제 링크: https://www.acmicpc.net/problem/30617
//  알고리즘 분류: 구현

import Shared

public struct BOJ30617: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69104KB, 시간: 188ms, 코드 길이: 440B
        let T = Int(readLine()!)!
        var score = 0
        var (lk, rk) = (0, 0)

        for idx in 0..<T {
            let lr = readLine()!.split(separator: " ").map { Int($0)! }

            if idx >= 1 {
                if lr[0] != 0 && lr[0] == lk {
                    score += 1
                }

                if lr[1] != 0 && lr[1] == rk {
                    score += 1
                }
            }

            if lr[0] != 0 && lr[1] != 0 && lr[0] == lr[1] {
                score += 1
            }

            (lk, rk) = (lr[0], lr[1])
        }

        print(score)
    }
}
