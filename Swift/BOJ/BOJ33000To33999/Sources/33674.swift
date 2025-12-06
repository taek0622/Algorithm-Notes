//
//  33674.swift
//  BOJ33000To33999
//
//  Created by 김민택 on 12/6/25.
//

//  문제 링크: https://www.acmicpc.net/problem/33674
//  알고리즘 분류: 구현, 시뮬레이션

import Shared

public struct BOJ33674: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69104KB, 시간: 4ms, 코드 길이: 385B
        let NDK = readLine()!.split(separator: " ").map { Int($0)! }
        let s = readLine()!.split(separator: " ").map { Int($0)! }
        var star = Array(repeating: 0, count: NDK[0])
        var count = 0

        for _ in 0..<NDK[1] {
            for idx in 0..<NDK[0] {
                star[idx] += s[idx]

                if star[idx] > NDK[2] {
                    star = s
                    count += 1
                    break
                }
            }
        }

        print(count)
    }
}
