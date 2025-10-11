//
//  30642.swift
//  BOJ30000To30999
//
//  Created by 김민택 on 10/11/25.
//

//  문제 링크: https://www.acmicpc.net/problem/30642
//  알고리즘 분류: 수학, 구현, 사칙연산

import Shared

public struct BOJ30642: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69100KB, 시간: 8ms, 코드 길이: 188B
        let N = Int(readLine()!)!
        let mascot = readLine()!
        let K = Int(readLine()!)!
        print((mascot == "annyong" && K % 2 == 1) || (mascot == "induck" && K % 2 == 0) ? K : 1...N ~= K-1 ? K-1 : K+1)
    }
}
