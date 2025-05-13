//
//  2164.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/01/30.
//

//  문제 링크: https://www.acmicpc.net/problem/2164
//  알고리즘 분류: 자료 구조, 큐

import Foundation

import Shared

public struct BOJ2164: Solvable {
    public init() {}

    public func run() {
        // 메모리: 79508KB, 시간: 12ms, 코드 길이: 186ms
        let N = Int(readLine()!)!
        var number = N-1
        var count = 0

        while number > 1 {
            number /= 2
            count += 1
        }

        print(N == 1 ? 1 : (N - Int(pow(2, Double(count)))) * 2)
    }
}
