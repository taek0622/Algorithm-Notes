//
//  5612.swift
//  BOJ05000To05999
//
//  Created by 김민택 on 7/24/25.
//

//  문제 링크: https://www.acmicpc.net/problem/5612
//  알고리즘 분류: 구현, 시뮬레이션

import Shared

public struct BOJ5612: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69104KB, 시간: 16ms, 코드 길이: 292B
        let n = Int(readLine()!)!
        var m = Int(readLine()!)!
        var Sj = m
        var isError = false

        for _ in 0..<n {
            let input = readLine()!.split(separator: " ").map { Int($0)! }
            m = m + input[0] - input[1]

            if m < 0 {
                isError = true
            }

            Sj = max(Sj, m)
        }

        print(isError ? 0 : Sj)
    }
}
