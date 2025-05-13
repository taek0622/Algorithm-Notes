//
//  1000.swift
//  Swift
//
//  Created by 김민택 on 2022/05/09.
//

//  문제 링크: https://www.acmicpc.net/problem/1000
//  알고리즘 분류: 수학, 구현, 사칙연산

import Shared

public struct BOJ1000: Solvable {
    public init() {}

    public func run() {
        let input = readLine()!.split(separator: " ").map {
            Int(String($0))!
        }

        var result = 0

        for i in input {
            result += i
        }

        print(result)
    }
}
