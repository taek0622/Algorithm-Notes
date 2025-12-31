//
//  16019.swift
//  BOJ16000To16999
//
//  Created by 김민택 on 12/31/25.
//

//  문제 링크: https://www.acmicpc.net/problem/16019
//  알고리즘 분류: 수학, 구현, 사칙연산

import Shared

public struct BOJ16019: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69104KB, 시간: 4ms, 코드 길이: 277B
        let city = readLine()!.split(separator: " ").map { Int($0)! }
        var dist = Array(repeating: 0, count: 5)

        for idx in 0..<4 {
            dist[idx+1] = dist[idx] + city[idx]
        }

        for idx in 0..<5 {
            print(dist.map { String(max($0 - dist[idx], dist[idx] - $0)) }.joined(separator: " "))
        }
    }
}
