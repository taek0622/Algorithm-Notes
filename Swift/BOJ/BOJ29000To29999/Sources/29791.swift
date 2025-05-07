//
//  29791.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2/10/25.
//

//  문제 링크: https://www.acmicpc.net/problem/29791
//  알고리즘 분류: 구현, 정렬

import Shared

public struct BOJ29791: Solvable {
    public init() {}

    public func run() {
        // 메모리: 149256KB, 시간: 916ms, 코드 길이: 379B
        _ = readLine()
        let A = readLine()!.split(separator: " ").map { Int($0)! }.sorted()
        let B = readLine()!.split(separator: " ").map { Int($0)! }.sorted()
        var used = (0, 0)
        var cooldown = 0

        for a in A where a >= cooldown {
            used.0 += 1
            cooldown = a + 100
        }

        cooldown = 0

        for b in B where b >= cooldown {
            used.1 += 1
            cooldown = b + 360
        }

        print("\(used.0) \(used.1)")
    }
}
