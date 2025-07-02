//
//  10409.swift
//  BOJ10000To10999
//
//  Created by 김민택 on 7/2/25.
//

//  문제 링크: https://www.acmicpc.net/problem/10409
//  알고리즘 분류: 수학, 구현, 사칙연산

import Shared

public struct BOJ10409: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69104KB, 시간: 8ms, 코드 길이: 280B
        let nT = readLine()!.split(separator: " ").map { Int($0)! }
        let work = readLine()!.split(separator: " ").map { Int($0)! }
        var (time, count) = (0, 0)

        for idx in 0..<nT[0] {
            if time + work[idx] > nT[1] {
                break
            }

            time += work[idx]
            count += 1
        }

        print(count)
    }
}
