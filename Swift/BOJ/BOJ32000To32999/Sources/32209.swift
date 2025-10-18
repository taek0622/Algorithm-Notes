//
//  32209.swift
//  BOJ32000To32999
//
//  Created by 김민택 on 10/18/25.
//

//  문제 링크: https://www.acmicpc.net/problem/32209
//  알고리즘 분류: 수학, 구현, 사칙연산

import Shared

public struct BOJ32209: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69104KB, 시간: 8ms, 코드 길이: 326B
        var problem = 0
        let Q = Int(readLine()!)!

        for _ in 0..<Q {
            let query = readLine()!.split(separator: " ").map { Int($0)! }

            if problem < 0 {
                continue
            }

            if query[0] == 1 {
                problem += query[1]
            } else {
                problem -= query[1]
            }
        }

        print(problem >= 0 ? "See you next month" : "Adios")
    }
}
