//
//  3047.swift
//  BOJ03000To03999
//
//  Created by 김민택 on 6/7/25.
//

//  문제 링크: https://www.acmicpc.net/problem/3047
//  알고리즘 분류: 구현

import Shared

public struct BOJ3047: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69108KB, 시간: 8ms, 코드 길이: 147B
        let ABC = readLine()!.split(separator: " ").map { Int($0)! }.sorted()
        readLine()!.forEach { print(ABC[Int($0.asciiValue!) - 65], terminator: " ") }
    }
}
