//
//  15969.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/05/04.
//

// 문제: https://www.acmicpc.net/problem/15969

import Shared

public struct BOJ15969: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69108KB, 시간: 8ms, 코드 길이: 142B
        let N = Int(readLine()!)!
        let scores = readLine()!.split(separator: " ").map { Int(String($0))! }.sorted()
        print(scores.last! - scores.first!)
    }
}
