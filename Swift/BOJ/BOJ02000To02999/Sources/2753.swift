//
//  2753.swift
//  Swift
//
//  Created by 김민택 on 2022/05/11.
//

//  문제 링크: https://www.acmicpc.net/problem/2753
//  알고리즘 분류: 수학, 구현, 사칙연산

import Shared

public struct BOJ2753: Solvable {
    public init() {}

    public func run() {
        let input = Int(readLine()!)!

        if (input % 4 == 0 && input % 100 != 0) || input % 400 == 0 {
            print("1")
        }
        else {
            print("0")
        }
    }
}
