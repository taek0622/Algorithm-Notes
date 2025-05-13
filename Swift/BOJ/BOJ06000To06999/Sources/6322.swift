//
//  6322.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2/29/24.
//

//  문제 링크: https://www.acmicpc.net/problem/6322
//  알고리즘 분류: 수학, 기하학, 사칙연산, 피타고라스 정리

import Foundation

import Shared

public struct BOJ6322: Solvable {
    public init() {}

    public func run() {
        // 메모리: 79512KB, 시간: 12ms, 코드 길이: 684B
        var idx = 1

        while let input = readLine(), input != "0 0 0" {
            print("Triangle #\(idx)")

            var abc = input.split(separator: " ").map { Double($0)! }

            if abc[2] == -1 {
                abc[2] = sqrt(abc[0] * abc[0] + abc[1] * abc[1])
                print("c = \(String(format: "%.3f", abc[2]))")
            } else if max(abc[0], abc[1]) >= abc[2] {
                print("Impossible.")
            } else if abc[0] == -1 {
                abc[0] = sqrt(abc[2] * abc[2] - abc[1] * abc[1])
                print("a = \(String(format: "%.3f", abc[0]))")
            } else {
                abc[1] = sqrt(abc[2] * abc[2] - abc[0] * abc[0])
                print("b = \(String(format: "%.3f", abc[1]))")
            }

            print()

            idx += 1
        }
    }
}
