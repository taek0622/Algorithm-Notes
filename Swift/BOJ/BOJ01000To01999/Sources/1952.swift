//
//  1952.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 8/10/24.
//

//  문제 링크: https://www.acmicpc.net/problem/1952
//  알고리즘 분류: 수학, 구현, 시뮬레이션

import Shared

public struct BOJ1952: Solvable {
    public init() {}

    public func run() {
        let MN = readLine()!.split(separator: " ").map { Int($0)! }
        var result = MN.min()! * 2 - 1

        if MN[0] <= MN[1] {
            result -= 1
        }

        print(result)
    }
}
