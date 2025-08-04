//
//  13416.swift
//  BOJ13000To13999
//
//  Created by 김민택 on 8/4/25.
//

//  문제 링크: https://www.acmicpc.net/problem/13416
//  알고리즘 분류: 수학, 구현, 사칙연산

import Shared

public struct BOJ13416: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69104KB, 시간: 112ms, 코드 길이: 228B
        let T = Int(readLine()!)!

        for _ in 0..<T {
            let N = Int(readLine()!)!
            var benefit = 0

            for _ in 0..<N {
                benefit += ([0] + readLine()!.split(separator: " ").map { Int($0)! }).max()!
            }

            print(benefit)
        }
    }
}
