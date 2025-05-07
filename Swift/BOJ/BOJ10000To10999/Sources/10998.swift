//
//  10998.swift
//  Swift
//
//  Created by 김민택 on 2022/05/10.
//

//  문제 링크: https://www.acmicpc.net/problem/10998
//  알고리즘 분류: 수학, 구현, 사칙연산

import Shared

public struct BOJ10998: Solvable {
    public init() {}

    public func run() {
        let input = readLine()!.split(separator: " ").map {
            Int($0)!
        }

        var result = 1

        for i in input {
            result *= i
        }

        print(result)
    }
}
