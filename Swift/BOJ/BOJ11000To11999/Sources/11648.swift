//
//  11648.swift
//  BOJ11000To11999
//
//  Created by 김민택 on 8/14/25.
//

//  문제 링크: https://www.acmicpc.net/problem/11648
//  알고리즘 분류: 수학, 구현, 사칙연산

import Shared

public struct BOJ11648: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69100KB, 시간: 8ms, 코드 길이: 189B
        var num = Int(readLine()!)!
        var count = 0

        while num > 9 {
            var mul = 1

            while num > 0 {
                mul *= num % 10
                num /= 10
            }

            count += 1
            num = mul
        }

        print(count)
    }
}
