//
//  3053.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/01/17.
//

// 문제: https://www.acmicpc.net/problem/3053

import Foundation

import Shared

public struct BOJ3053: Solvable {
    public init() {}

    public func run() {
        solution2()
    }

    // 메모리: 79504KB, 시간: 12ms, 코드 길이: 315B
    private func solution1() {
        let radius = Double(readLine()!)!
        let euclid = String(format: "%.6f", (radius * radius * Double.pi * 1000000).rounded() / 1000000)
        let taxi_radius = sqrt(radius * radius * 2)
        let taxi = String(format: "%.6f", (taxi_radius * taxi_radius * 1000000).rounded() / 1000000)

        print("\(euclid)\n\(taxi)")
    }

    // 메모리: 79504KB, 시간: 12ms, 코드 길이: 165B
    private func solution2() {
        let radius = Double(readLine()!)!

        print("\(String(format: "%.6f", radius * radius * Double.pi))\n\(String(format: "%.6f", radius * radius * 2))")
    }
}
