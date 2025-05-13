//
//  1475.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 5/23/24.
//

//  문제 링크: https://www.acmicpc.net/problem/1475
//  알고리즘 분류: 구현

import Shared

public struct BOJ1475: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69100KB, 시간: 8ms, 코드 길이: 201B
        let N = readLine()!.map { Int(String($0))! }
        var count = Array(repeating: 0, count: 10)

        for num in N {
            count[num] += 1
        }

        count[6] = (count[6] + count[9] + 1) / 2
        count[9] = 0

        print(count.max()!)
    }
}
