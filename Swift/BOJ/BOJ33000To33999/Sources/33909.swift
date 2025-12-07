//
//  33909.swift
//  BOJ33000To33999
//
//  Created by 김민택 on 12/7/25.
//

//  문제 링크: https://www.acmicpc.net/problem/33909
//  알고리즘 분류: 수학, 구현, 사칙연산

import Shared

public struct BOJ33909: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69104KB, 시간: 4ms, 코드 길이: 111B
        let b = readLine()!.split(separator: " ").map { Int($0)! }
        print(min((b[0] + b[3]) / 3, (b[1] + b[2] * 2) / 6))
    }
}
