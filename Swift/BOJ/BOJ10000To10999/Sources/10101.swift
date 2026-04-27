//
//  10101.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/02/13.
//

// 문제: https://www.acmicpc.net/problem/10101

import Shared

public struct BOJ10101: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69100KB, 시간: 8ms, 코드 길이: 308B
        var sum = 0
        var angles = Set<Int>()

        for _ in 0..<3 {
            let angle = Int(readLine()!)!

            sum += angle
            angles.insert(angle)
        }

        if sum != 180 {
            print("Error")
        } else if angles.count == 3 {
            print("Scalene")
        } else if angles.count == 2 {
            print("Isosceles")
        } else {
            print("Equilateral")
        }
    }
}
