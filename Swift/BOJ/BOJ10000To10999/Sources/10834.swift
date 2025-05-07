//
//  10834.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 8/24/24.
//

//  문제 링크: https://www.acmicpc.net/problem/10834
//  알고리즘 분류: 수학, 구현, 사칙연산

import Shared

public struct BOJ10834: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69104KB, 시간: 8ms, 코드 길이: 254B
        let M = Int(readLine()!)!
        var rotation = 0
        var turn = 1.0

        for _ in 0..<M {
            let abs = readLine()!.split(separator: " ").map { Int($0)! }
            rotation += abs[2]
            turn = turn * Double(abs[1]) / Double(abs[0])
        }

        print("\(rotation % 2) \(Int(turn))")
    }
}
