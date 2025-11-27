//
//  25801.swift
//  BOJ25000To25999
//
//  Created by 김민택 on 11/27/25.
//

//  문제 링크: https://www.acmicpc.net/problem/25801
//  알고리즘 분류: 구현, 문자열

import Shared

public struct BOJ25801: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69104KB, 시간: 4ms, 코드 길이: 267B
        let input = readLine()!
        var alpha = Array(repeating: 0, count: 26)

        for char in input {
            alpha[Int(char.asciiValue!) - 97] += 1
        }

        let alphaSet = Set(alpha.filter { $0 != 0 }.map { $0 % 2 == 1 })
        print(alphaSet.count == 2 ? "0/1" : alphaSet.contains(true) ? 1 : 0)
    }
}
