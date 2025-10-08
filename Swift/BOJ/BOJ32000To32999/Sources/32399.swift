//
//  32399.swift
//  BOJ32000To32999
//
//  Created by 김민택 on 10/8/25.
//

//  문제 링크: https://www.acmicpc.net/problem/32399
//  알고리즘 분류: 구현

import Shared

public struct BOJ32399: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69096KB, 시간: 8ms, 코드 길이: 109B
        let S = readLine()!

        if S == "(1)" {
            print(0)
        } else if S == ")1(" {
            print(2)
        } else {
            print(1)
        }
    }
}
