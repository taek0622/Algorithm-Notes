//
//  11758.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 1/13/24.
//

//  문제 링크: https://www.acmicpc.net/problem/11758
//  알고리즘 분류: 기하학

import Shared

public struct BOJ11758: Solvable {
    public init() {}

    public func run() {
        solution2()
    }

    // 메모리: 69104KB, 시간: 8ms, 코드 길이: 273B
    private func solution1() {
        var p = Array(repeating: Array(repeating: 0, count: 2), count: 3)

        for idx in 0..<3 {
            p[idx] = readLine()!.split(separator: " ").map { Int($0)! }
        }

        let cp = (p[1][0]-p[0][0])*(p[2][1]-p[0][1])-(p[2][0]-p[0][0])*(p[1][1]-p[0][1])

        print(cp == 0 ? 0 : (cp > 0 ? 1 : -1))
    }

    // 메모리: 69104KB, 시간: 8ms, 코드 길이: 242B
    private func solution2() {
        var p = Array(repeating: Array(repeating: 0, count: 2), count: 3)

        for idx in 0..<3 {
            p[idx] = readLine()!.split(separator: " ").map { Int($0)! }
        }

        print(((p[1][0]-p[0][0])*(p[2][1]-p[0][1])-(p[2][0]-p[0][0])*(p[1][1]-p[0][1])).signum())
    }
}
