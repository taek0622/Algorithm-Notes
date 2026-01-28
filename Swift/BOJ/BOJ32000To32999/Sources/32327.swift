//
//  32327.swift
//  BOJ32000To32999
//
//  Created by 김민택 on 1/28/26.
//

//  문제 링크: https://www.acmicpc.net/problem/32327
//  알고리즘 분류: 수학, 구현, 사칙연산, 시뮬레이션

import Shared

public struct BOJ32327: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69100KB, 시간: 28ms, 코드 길이: 107B
        var D = Int(readLine()!)!

        while let input = readLine(), D > Int(input)! {
            D += Int(input)!
        }

        print(D)
    }
}
