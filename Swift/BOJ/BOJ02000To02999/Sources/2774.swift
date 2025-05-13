//
//  2774.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 7/23/24.
//

//  문제 링크: https://www.acmicpc.net/problem/2774
//  알고리즘 분류: 구현

import Shared

public struct BOJ2774: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69104KB, 시간: 8ms, 코드 길이: 100B
        let T = Int(readLine()!)!

        for _ in 0..<T {
            let X = Set(Array(readLine()!))
            print(Set(Array(readLine()!)).count)
        }
    }
}
