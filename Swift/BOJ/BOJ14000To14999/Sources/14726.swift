//
//  14726.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 10/10/24.
//

//  문제 링크: https://www.acmicpc.net/problem/14726
//  알고리즘 분류: 수학, 구현, 문자열, 사칙연산

import Shared

public struct BOJ14726: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69100KB, 시간: 4ms, 코드 길이: 384B
        let T = Int(readLine()!)!

        for _ in 0..<T {
            let number = readLine()!.map { String($0) }
            var sum = 0

            for idx in number.indices {
                var num = Int(number[idx])!

                if idx % 2 == 0 {
                    num *= 2

                    if num >= 10 {
                        num = num / 10 + num % 10
                    }
                }

                sum += num
            }

            print(sum % 10 == 0 ? "T" : "F")
        }
    }
}
