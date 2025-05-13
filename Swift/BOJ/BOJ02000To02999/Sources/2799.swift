//
//  2799.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 12/26/24.
//

//  문제 링크: https://www.acmicpc.net/problem/2799
//  알고리즘 분류: 구현

import Shared

public struct BOJ2799: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69108KB, 시간: 20ms, 코드 길이: 559B
        let MN = readLine()!.split(separator: " ").map { Int($0)! }
        var windows = Array(repeating: Array(repeating: 0, count: MN[1]), count: MN[0])
        var status = [0, 0, 0, 0, 0]

        for row in 0..<MN[0]*5+1 {
            let input = readLine()!.map { $0 == "*" }

            if row % 5 == 0 {
                continue
            }

            for col in stride(from: 1, to: MN[1]*5+1, by: 5) where input[col] {
                windows[row/5][col/5] += 1
            }
        }

        for row in 0..<MN[0] {
            for col in 0..<MN[1] {
                status[windows[row][col]] += 1
            }
        }

        print(status.map { String($0) }.joined(separator: " "))
    }
}
