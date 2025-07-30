//
//  10599.swift
//  BOJ10000To10999
//
//  Created by 김민택 on 7/30/25.
//

//  문제 링크: https://www.acmicpc.net/problem/10599
//  알고리즘 분류: 수학, 구현, 사칙연산

import Shared

public struct BOJ10599: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69104KB, 시간: 8ms, 코드 길이: 160B
        while let input = readLine(), input != "0 0 0 0" {
            let abcd = input.split(separator: " ").map { Int($0)! }
            print(abcd[2] - abcd[1], abcd[3] - abcd[0])
        }
    }
}
