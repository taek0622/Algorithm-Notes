//
//  32193.swift
//  BOJ32000To32999
//
//  Created by 김민택 on 11/11/25.
//

//  문제 링크: https://www.acmicpc.net/problem/32193
//  알고리즘 분류: 수학, 구현, 사칙연산

import Shared

public struct BOJ32193: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69104KB, 시간: 372ms, 코드 길이: 174B
        let N = Int(readLine()!)!
        var (A, B) = (0, 0)

        for _ in 1...N {
            let AB = readLine()!.split(separator: " ").map { Int($0)! }
            A += AB[0]
            B += AB[1]
            print(A-B)
        }
    }
}
