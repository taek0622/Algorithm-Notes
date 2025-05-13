//
//  6502.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2/29/24.
//

//  문제 링크: https://www.acmicpc.net/problem/6502
//  알고리즘 분류: 수학, 구현, 기하학, 피타고라스 정리

import Shared

public struct BOJ6502: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69104KB, 시간: 12ms, 코드 길이: 349B
        var idx = 1

        while let input = readLine(), input != "0" {
            print("Pizza \(idx)", terminator: " ")

            let rwl = input.split(separator: " ").map { Int($0)! }

            if (rwl[0] * 2) * (rwl[0] * 2) < rwl[1] * rwl[1] + rwl[2] * rwl[2] {
                print("does not fit on the table.")
            } else {
                print("fits on the table.")
            }

            idx += 1
        }
    }
}
