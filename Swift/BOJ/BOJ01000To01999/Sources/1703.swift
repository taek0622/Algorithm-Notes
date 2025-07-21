//
//  1703.swift
//  BOJ01000To01999
//
//  Created by 김민택 on 7/21/25.
//

//  문제 링크: https://www.acmicpc.net/problem/1703
//  알고리즘 분류: 수학, 구현, 사칙연산

import Shared

public struct BOJ1703: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69104KB, 시간: 8ms, 코드 길이: 269B
        while let input = readLine(), input != "0" {
            let a = input.split(separator: " ").map { Int($0)! }
            var leaf = a[1] - a[2]

            for year in stride(from: 1, to: a[0], by: 1) {
                leaf *= a[year * 2 + 1]
                leaf -= a[year * 2 + 2]
            }

            print(leaf)
        }
    }
}
