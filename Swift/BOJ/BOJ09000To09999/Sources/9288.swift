//
//  9288.swift
//  BOJ09000To09999
//
//  Created by 김민택 on 11/2/25.
//

//  문제 링크: https://www.acmicpc.net/problem/9288
//  알고리즘 분류: 수학, 구현, 브루트포스 알고리즘, 시뮬레이션

import Shared

public struct BOJ9288: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69100KB, 시간: 8ms, 코드 길이: 298B
        let N = Int(readLine()!)!
        let comb = ["(1,1)", "(1,2)", "(1,3)\n(2,2)", "(1,4)\n(2,3)", "(1,5)\n(2,4)\n(3,3)", "(1,6)\n(2,5)\n(3,4)", "(2,6)\n(3,5)\n(4,4)", "(3,6)\n(4,5)", "(4,6)\n(5,5)", "(5,6)", "(6,6)"]

        for x in 1...N {
            let sum = Int(readLine()!)!
            print("Case \(x):\n\(comb[sum-2])")
        }
    }
}
