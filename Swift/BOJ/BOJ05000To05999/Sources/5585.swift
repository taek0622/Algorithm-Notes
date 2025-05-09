//
//  5585.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2/4/24.
//

//  문제 링크: https://www.acmicpc.net/problem/5585
//  알고리즘 분류: 그리디 알고리즘

import Shared

public struct BOJ5585: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69100KB, 시간: 8ms, 코드 길이: 152B
        var price = 1000 - Int(readLine()!)!
        var count = 0

        for yen in [500, 100, 50, 10, 5] {
            count += price / yen
            price %= yen
        }

        print(price + count)
    }
}
