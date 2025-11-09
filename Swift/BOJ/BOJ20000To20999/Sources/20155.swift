//
//  20155.swift
//  BOJ20000To20999
//
//  Created by 김민택 on 11/9/25.
//

//  문제 링크: https://www.acmicpc.net/problem/20155
//  알고리즘 분류: 구현

import Shared

public struct BOJ20155: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69104KB, 시간: 8ms, 코드 길이: 218B
        let NM = readLine()!.split(separator: " ").map { Int($0)! }
        var conv = Array(repeating: 0, count: NM[1])
        let X = readLine()!.split(separator: " ").map { Int($0)! }

        for x in X {
            conv[x-1] += 1
        }

        print(conv.max()!)
    }
}
