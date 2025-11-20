//
//  32171.swift
//  BOJ32000To32999
//
//  Created by 김민택 on 11/20/25.
//

//  문제 링크: https://www.acmicpc.net/problem/32171
//  알고리즘 분류: 수학, 구현, 기하학, 사칙연산

import Shared

public struct BOJ32171: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69108KB, 시간: 4ms, 코드 길이: 387B
        let N = Int(readLine()!)!
        let abcd = readLine()!.split(separator: " ").map { Int($0)! }
        var (a, b, c, d) = (abcd[0], abcd[1], abcd[2], abcd[3])
        print((c - a) * 2 + (d - b) * 2)

        for _ in 1..<N {
            let abcd = readLine()!.split(separator: " ").map { Int($0)! }
            (a, b, c, d) = (min(abcd[0], a), min(abcd[1], b), max(abcd[2], c), max(abcd[3], d))
            print((c - a) * 2 + (d - b) * 2)
        }
    }
}
