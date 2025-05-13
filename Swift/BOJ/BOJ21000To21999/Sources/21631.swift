//
//  21631.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 1/1/25.
//

//  문제 링크: https://www.acmicpc.net/problem/21631
//  알고리즘 분류: 수학, 구현

import Shared

public struct BOJ21631: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69104KB, 시간: 8ms, 코드 길이: 100B
        let ab = readLine()!.split(separator: " ").map { Int($0)! }
        print(ab[0] < ab[1] ? ab[0] + 1 : ab[1])
    }
}
