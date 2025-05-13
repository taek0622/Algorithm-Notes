//
//  1008.swift
//  Swift
//
//  Created by 김민택 on 2022/05/10.
//

//  문제 링크: https://www.acmicpc.net/problem/1008
//  알고리즘 분류: 수학, 구현, 사칙연산

import Shared

public struct BOJ1008: Solvable {
    public init() {}

    public func run() {
        let input = readLine()!.split(separator: " ").map {
            Double($0)!
        }

        print(input[0] / input[1])
    }
}
