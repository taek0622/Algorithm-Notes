//
//  21312.swift
//  BOJ21000To21999
//
//  Created by 김민택 on 8/17/25.
//

//  문제 링크: https://www.acmicpc.net/problem/21312
//  알고리즘 분류: 수학, 구현, 사칙연산

import Shared

public struct BOJ21312: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69104KB, 시간: 8ms, 코드 길이: 21B
        let ABC = readLine()!.split(separator: " ").map { Int($0)! }
        let cocktail = [ABC[0], ABC[1], ABC[2], ABC[0] * ABC[1], ABC[0] * ABC[2], ABC[1] * ABC[2], ABC[0] * ABC[1] * ABC[2]]
        print(cocktail.filter { $0 % 2 == 1 }.max() ?? cocktail.max()!)
    }
}
