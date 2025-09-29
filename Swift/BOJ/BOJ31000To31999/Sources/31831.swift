//
//  31831.swift
//  BOJ31000To31999
//
//  Created by 김민택 on 9/29/25.
//

//  문제 링크: https://www.acmicpc.net/problem/31831
//  알고리즘 분류: 구현

import Shared

public struct BOJ31831: Solvable {
    public init() {}

    public func run() {
        // 메모리: 76892KB, 시간: 44ms, 코드 길이: 254B
        let NM = readLine()!.split(separator: " ").map { Int($0)! }
        let A = readLine()!.split(separator: " ").map { Int($0)! }
        var (stress, day) = (0, 0)

        for a in A {
            stress = max(0, stress + a)

            if stress >= NM[1] {
                day += 1
            }
        }

        print(day)
    }
}
