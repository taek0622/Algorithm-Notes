//
//  14910.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 9/11/24.
//

//  문제 링크: https://www.acmicpc.net/problem/14910
//  알고리즘 분류: 구현

import Shared

public struct BOJ14910: Solvable {
    public init() {}

    public func run() {
        // 메모리: 125496KB, 시간: 476ms, 코드 길이: 98B
        let A = readLine()!.split(separator: " ").map { Int($0)! }
        print(A == A.sorted() ? "Good" : "Bad")
    }
}
