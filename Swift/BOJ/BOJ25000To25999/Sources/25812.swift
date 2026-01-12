//
//  25812.swift
//  BOJ25000To25999
//
//  Created by 김민택 on 1/12/26.
//

//  문제 링크: https://www.acmicpc.net/problem/25812
//  알고리즘 분류: 수학, 구현, 사칙연산

import Shared

public struct BOJ25812: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69104KB, 시간: 4ms, 코드 길이: 301B
        var (fixed, double) = (0, 0)
        let nr = readLine()!.split(separator: " ").map { Int($0)! }

        for _ in 0..<nr[0] {
            let salary = Int(readLine()!)!

            if salary < nr[1] {
                fixed += 1
            } else if salary > nr[1] {
                double += 1
            }
        }

        print(fixed == double ? 0 : fixed > double ? 1 : 2)
    }
}
