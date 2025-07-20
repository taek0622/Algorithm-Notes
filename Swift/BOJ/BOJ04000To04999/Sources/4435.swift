//
//  4435.swift
//  BOJ04000To04999
//
//  Created by 김민택 on 7/20/25.
//

//  문제 링크: https://www.acmicpc.net/problem/4435
//  알고리즘 분류: 수학, 구현, 사칙연산

import Shared

public struct BOJ4435: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69108KB, 시간: 8ms, 코드 길이: 586B
        let T = Int(readLine()!)!

        for idx in 1...T {
            let gandalf = readLine()!.split(separator: " ").map { Int($0)! }
            let sauron = readLine()!.split(separator: " ").map { Int($0)! }
            let score = (gandalf[0] * 1 + gandalf[1] * 2 + gandalf[2] * 3 + gandalf[3] * 3 + gandalf[4] * 4 + gandalf[5] * 10, sauron[0] * 1 + sauron[1] * 2 + sauron[2] * 2 + sauron[3] * 2 + sauron[4] * 3 + sauron[5] * 5 + sauron[6] * 10)
            print("Battle \(idx): \(score.0 == score.1 ? "No victor on this battle field" : score.0 > score.1 ? "Good triumphs over Evil" : "Evil eradicates all trace of Good")")
        }
    }
}
