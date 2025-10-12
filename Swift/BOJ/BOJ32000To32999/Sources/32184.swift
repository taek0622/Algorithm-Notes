//
//  32184.swift
//  BOJ32000To32999
//
//  Created by 김민택 on 10/12/25.
//

//  문제 링크: https://www.acmicpc.net/problem/32184
//  알고리즘 분류: 수학, 구현, 사칙연산

import Shared

public struct BOJ32184: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69104KB, 시간: 8ms, 코드 길이: 155B
        let AB = readLine()!.split(separator: " ").map { Int($0)! }
        print(AB[0] % 2 == 0 && AB[1] % 2 == 1 ? (AB[1] - AB[0] + 2) / 2 + 1 : (AB[1] - AB[0] + 2) / 2)
    }
}
