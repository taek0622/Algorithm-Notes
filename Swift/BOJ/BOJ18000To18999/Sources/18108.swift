//
//  18108.swift
//  Swift
//
//  Created by 김민택 on 2022/05/11.
//

//  문제 링크: https://www.acmicpc.net/problem/18108
//  알고리즘 분류: 수학, 사칙연산

import Shared

public struct BOJ18108: Solvable {
    public init() {}

    public func run() {
        // 2541 - 1998 = 543
        
        let input = Int(readLine()!)!

        print(input - 543)
    }
}
