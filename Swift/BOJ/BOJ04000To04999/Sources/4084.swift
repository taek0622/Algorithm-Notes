//
//  4084.swift
//  BOJ04000To04999
//
//  Created by 김민택 on 8/22/25.
//

//  문제 링크: https://www.acmicpc.net/problem/4084
//  알고리즘 분류: 수학, 구현, 시뮬레이션, 사칙연산

import Shared

public struct BOJ4084: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69104KB, 시간: 8ms, 코드 길이: 443B
        while let input = readLine(), input != "0 0 0 0" {
            var abcd = input.split(separator: " ").map { Int($0)! }
            var count = 0

            while abcd[0] != abcd[1] || abcd[0] != abcd[2] || abcd[0] != abcd[3] {
                let new = [max(abcd[0]-abcd[1], abcd[1]-abcd[0]), max(abcd[1]-abcd[2], abcd[2]-abcd[1]), max(abcd[2]-abcd[3], abcd[3]-abcd[2]), max(abcd[3]-abcd[0], abcd[0]-abcd[3])]
                count += 1
                abcd = new
            }

            print(count)
        }
    }
}
