//
//  33162.swift
//  BOJ33000To33999
//
//  Created by 김민택 on 5/25/25.
//

//  문제 링크: https://www.acmicpc.net/problem/33162
//  알고리즘 분류: 수학, 구현, 시뮬레이션, 사칙연산

import Shared

public struct BOJ33162: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69096KB, 시간: 8ms, 코드 길이: 50B
        let x = Int(readLine()!)!
        print(x / 2 + x % 2 * 3)
    }
}
