//
//  1904.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 10/19/23.
//

//  문제 링크: https://www.acmicpc.net/problem/1904
//  알고리즘 분류: 다이나믹 프로그래밍

import Shared

public struct BOJ1904: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69100KB, 시간: 12ms, 코드 길이: 164B
        let N = Int(readLine()!)!
        var dp = (1, 2)

        if N < 3 {
            print(N)
        } else {
            for _ in 3...N {
                dp = (dp.1, (dp.0 + dp.1) % 15746)
            }

            print(dp.1)
        }
    }
}
