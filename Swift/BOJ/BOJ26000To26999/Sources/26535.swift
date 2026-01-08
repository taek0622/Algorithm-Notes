//
//  26535.swift
//  BOJ26000To26999
//
//  Created by 김민택 on 1/8/26.
//

//  문제 링크: https://www.acmicpc.net/problem/26535
//  알고리즘 분류: 구현

import Shared

public struct BOJ26535: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69100KB, 시간: 4ms, 코드 길이: 249B
        let n = Int(readLine()!)!
        var div = 1

        while div * div < n {
            div += 1
        }

        print(String(repeating: "x", count: div + 2))

        for _ in 0..<div {
            print("x" + String(repeating: ".", count: div) + "x")
        }

        print(String(repeating: "x", count: div + 2))
    }
}
