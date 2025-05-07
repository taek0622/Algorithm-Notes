//
//  main.swift
//  Swift
//
//  Created by 김민택 on 2022/05/11.
//

//  문제 링크: https://www.acmicpc.net/problem/10430
//  알고리즘 분류: 수학, 구현, 사칙연산

import Shared

public struct BOJ10430: Solvable {
    public init() {}

    public func run() {
        let input = readLine()!.split(separator: " ").map {
            Int($0)!
        }

        let a = input[0]
        let b = input[1]
        let c = input[2]

        print((a + b) % c)
        print(((a % c) + (b + c)) % c)
        print((a * b) % c)
        print(((a % c) * (b % c)) % c)
    }
}
