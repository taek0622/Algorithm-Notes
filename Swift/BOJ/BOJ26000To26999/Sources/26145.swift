//
//  26145.swift
//  BOJ26000To26999
//
//  Created by 김민택 on 9/27/25.
//

//  문제 링크: https://www.acmicpc.net/problem/26145
//  알고리즘 분류: 수학, 구현, 사칙연산

import Shared

public struct BOJ26145: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69276KB, 시간: 440ms, 코드 길이: 471B
        let NM = readLine()!.split(separator: " ").map { Int($0)! }
        var money = Array(repeating: 0, count: NM.reduce(0, +))
        let S = readLine()!.split(separator: " ").map { Int($0)! }

        for idx in 0..<NM[0] {
            money[idx] = S[idx]
        }

        for idx in 0..<NM[0] {
            let T = readLine()!.split(separator: " ").map { Int($0)! }

            for col in 0..<NM.reduce(0, +) {
                money[col] += T[col]
                money[idx] -= T[col]
            }
        }

        print(money.map { String($0) }.joined(separator: " "))
    }
}
