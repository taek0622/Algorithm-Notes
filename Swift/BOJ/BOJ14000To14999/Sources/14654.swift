//
//  14654.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 4/17/25.
//

//  문제 링크: https://www.acmicpc.net/problem/14654
//  알고리즘 분류: 구현, 시뮬레이션

import Shared

public struct BOJ14654: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69108KB, 시간: 8ms, 코드 길이: 773B
        let N = Int(readLine()!)!
        var maxCount = 0
        var count = ("", 0)
        let ace = readLine()!.split(separator: " ").map { Int($0)! }
        let newyork = readLine()!.split(separator: " ").map { Int($0)! }

        for idx in 0..<N {
            let win = compare(ace[idx], newyork[idx])

            if win == "no" {
                count = (count.0 == "ace" ? "newyork" : "ace", 1)
            } else if count.0 == win {
                count.1 += 1
            } else {
                count.0 = win
                count.1 = 1
            }

            maxCount = max(maxCount, count.1)
        }

        print(maxCount)

        func compare(_ ace: Int, _ newyork: Int) -> String {
            if ace == newyork {
                return "no"
            } else if (ace == 1 && newyork == 2) || (ace == 2 && newyork == 3) || (ace == 3 && newyork == 1) {
                return "newyork"
            } else {
                return "ace"
            }
        }
    }
}
