//
//  17284.swift
//  BOJ17000To17999
//
//  Created by 김민택 on 9/12/25.
//

//  문제 링크: https://www.acmicpc.net/problem/17284
//  알고리즘 분류: 수학, 구현, 사칙연산

import Shared

public struct BOJ17284: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69104KB, 시간: 8ms, 코드 길이: 248B
        var money = 5000
        let push = readLine()!.split(separator: " ").map { Int($0)! }

        for button in push {
            if button == 1 {
                money -= 500
            } else if button == 2 {
                money -= 800
            } else {
                money -= 1000
            }
        }

        print(money)
    }
}
