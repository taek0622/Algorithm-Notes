//
//  16504.swift
//  BOJ16000To16999
//
//  Created by 김민택 on 8/25/25.
//

//  문제 링크: https://www.acmicpc.net/problem/16504
//  알고리즘 분류: 수학, 구현, 사칙연산

import Shared

public struct BOJ16504: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69104KB, 시간: 360ms, 코드 길이: 144B
        let N = Int(readLine()!)!
        var sum = 0

        for _ in 0..<N {
            sum += readLine()!.split(separator: " ").map { Int($0)! }.reduce(0, +)
        }

        print(sum)
    }
}
