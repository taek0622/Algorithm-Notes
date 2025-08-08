//
//  4806.swift
//  BOJ04000To04999
//
//  Created by 김민택 on 8/8/25.
//

//  문제 링크: https://www.acmicpc.net/problem/4806
//  알고리즘 분류: 구현

import Shared

public struct BOJ4806: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69092KB, 시간: 8ms, 코드 길이: 72B
        var count = 0

        while let _ = readLine() {
            count += 1
        }

        print(count)
    }
}
