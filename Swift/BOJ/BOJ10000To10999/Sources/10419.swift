//
//  10419.swift
//  BOJ10000To10999
//
//  Created by 김민택 on 7/18/25.
//

//  문제 링크: https://www.acmicpc.net/problem/10419
//  알고리즘 분류: 수학, 구현, 브루트포스 알고리즘, 사칙연산

import Shared

public struct BOJ10419: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69100KB, 시간: 4ms, 코드 길이: 156B
        let T = Int(readLine()!)!

        for _ in 0..<T {
            let d = Int(readLine()!)!
            var t = 0

            while t * t + t <= d {
                t += 1
            }

            print(t - 1)
        }
    }
}
