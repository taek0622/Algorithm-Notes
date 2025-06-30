//
//  4892.swift
//  BOJ04000To04999
//
//  Created by 김민택 on 6/30/25.
//

//  문제 링크: https://www.acmicpc.net/problem/4892
//  알고리즘 분류: 수학, 구현, 사칙연산

import Shared

public struct BOJ4892: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69100KB, 시간: 8ms, 코드 길이: 222B
        var number = 1

        while let input = readLine(), input != "0" {
            let n0 = Int(input)!
            let n1 = (n0 * 3) % 2 == 1
            let n4 = (n1 ? n0-1 : n0) / 2

            print("\(number). \(n1 ? "odd" : "even") \(n4)")
            number += 1
        }
    }
}
