//
//  1309.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 12/16/23.
//

//  문제 링크: https://www.acmicpc.net/problem/1309
//  알고리즘 분류: 다이나믹 프로그래밍

import Shared

public struct BOJ1309: Solvable {
    public init() {}

    public func run() {
        solution2()
    }

    // 메모리: 69884KB, 시간: 12ms, 코드 길이: 203B
    private func solution1() {
        let N = Int(readLine()!)!
        var pen = Array(repeating: 0, count: N+1)
        pen[0...1] = [1, 3]

        for idx in 2..<N+1 {
            pen[idx] = (pen[idx - 2] * 3 + (pen[idx - 1] - pen[idx - 2]) * 2) % 9901
        }

        print(pen[N])
    }

    // 메모리: 69884KB, 시간: 12ms, 코드 길이: 182B
    private func solution2() {
        let N = Int(readLine()!)!
        var pen = Array(repeating: 0, count: N+1)
        pen[0...1] = [1, 3]

        for idx in 2..<N+1 {
            pen[idx] = (pen[idx - 2] + pen[idx - 1] * 2) % 9901
        }

        print(pen[N])
    }
}
