//
//  1735.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/03/25.
//

// 문제: https://www.acmicpc.net/problem/1735

import Shared

public struct BOJ1735: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69104KB, 시간: 8ms, 코드 길이: 514B
        let number1 = readLine()!.split(separator: " ").map { Int(String($0))! }
        let number2 = readLine()!.split(separator: " ").map { Int(String($0))! }
        let sum = (number1[0] * number2[1] + number1[1] * number2[0], number1[1] * number2[1])
        let divisor = getDivisor(sum.0, sum.1)

        print(sum.0 / divisor, sum.1 / divisor)

        func getDivisor(_ baseNumber: Int, _ targetNumber: Int) -> Int {
            if targetNumber % baseNumber == 0 {
                return baseNumber
            }

            return getDivisor(targetNumber % baseNumber, baseNumber)
        }
    }
}
