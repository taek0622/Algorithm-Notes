//
//  15083.swift
//  BOJ15000To15999
//
//  Created by 김민택 on 1/23/26.
//

//  문제 링크: https://www.acmicpc.net/problem/15083
//  알고리즘 분류: 수학, 구현, 사칙연산

import Foundation

import Shared

public struct BOJ15083: Solvable {
    public init() {}

    public func run() {
        // 메모리: 79512KB, 시간: 8ms, 코드 길이: 361B
        let p = readLine()!.split(separator: " ").map { Double($0)! }.sorted()
        var c = readLine()!.split(separator: " ").map { Double($0)! / 100 }

        if c[1] > c[2] {
            c.swapAt(1, 2)
        }

        let one = p.reduce(0, +) * c[0]
        let two = p[2] * c[2] + p[1] * c[1]

        print(one > two ? "one \(String(format: "%.2f", one))" : "two \(String(format: "%.2f", two))")
    }
}
