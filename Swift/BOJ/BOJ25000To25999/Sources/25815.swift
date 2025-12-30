//
//  25815.swift
//  BOJ25000To25999
//
//  Created by 김민택 on 12/30/25.
//

//  문제 링크: https://www.acmicpc.net/problem/25815
//  알고리즘 분류: 수학, 구현, 사칙연산

import Shared

public struct BOJ25815: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69104KB, 시간: 8ms, 코드 길이: 262B
        let ym = readLine()!.split(separator: " ").map { Int($0)! }
        var age = 0

        if ym[0] < 1 {
            age += ym[1] * 15
        } else if ym[0] < 2 {
            age += 15 * 12 + ym[1] * 9
        } else {
            age += (15 + 9 + (ym[0] - 2) * 4) * 12 + ym[1] * 4
        }

        print("\(age / 12) \(age % 12)")
    }
}
