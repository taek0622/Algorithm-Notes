//
//  1673.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 7/27/24.
//

//  문제 링크: https://www.acmicpc.net/problem/1673
//  알고리즘 분류: 수학, 구현

import Shared

public struct BOJ1673: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69104KB, 시간: 8ms, 코드 길이: 265B
        while let input = readLine() {
            var nk = input.split(separator: " ").map { Int($0)! }
            var count = 0

            while nk[0] >= nk[1] {
                count += nk[0] / nk[1] * nk[1]
                nk[0] = nk[0] % nk[1] + nk[0] / nk[1]
            }

            count += nk[0]

            print(count)
        }
    }
}
