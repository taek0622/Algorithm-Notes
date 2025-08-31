//
//  29752.swift
//  BOJ29000To29999
//
//  Created by 김민택 on 8/31/25.
//

//  문제 링크: https://www.acmicpc.net/problem/29752
//  알고리즘 분류: 구현

import Shared

public struct BOJ29752: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69104KB, 시간: 8ms, 코드 길이: 278B
        let N = Int(readLine()!)!
        let s = readLine()!.split(separator: " ").map { Int($0)! }
        var (maxStreak, streak) = (0, 0)

        for idx in 0..<N {
            if s[idx] > 0 {
                streak += 1
                maxStreak = max(maxStreak, streak)
            } else {
                streak = 0
            }
        }

        print(maxStreak)
    }
}
