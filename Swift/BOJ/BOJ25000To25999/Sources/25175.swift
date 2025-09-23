//
//  25175.swift
//  BOJ25000To25999
//
//  Created by 김민택 on 9/23/25.
//

//  문제 링크: https://www.acmicpc.net/problem/25175
//  알고리즘 분류: 수학, 구현, 사칙연산, 시뮬레이션

import Shared

public struct BOJ25175: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69104KB, 시간: 8ms, 코드 길이: 126B
        let NMK = readLine()!.split(separator: " ").map { Int($0)! }
        print(((NMK[2] - 3) % NMK[0] + NMK[1] - 1 + NMK[0]) % NMK[0] + 1)
    }
}
