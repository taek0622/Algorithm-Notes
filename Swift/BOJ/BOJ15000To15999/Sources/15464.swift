//
//  15464.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2/4/25.
//

//  문제 링크: https://www.acmicpc.net/problem/15464
//  알고리즘 분류: 구현, 문자열, 시뮬레이션

import Shared

public struct BOJ15464: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69112KB, 시간: 8ms, 코드 길이: 541B
        let N = Int(readLine()!)!
        let ids = readLine()!.split(separator: " ").map { Int($0)! }
        var seq = Array(repeating: 0, count: N)
        var input = readLine()!.split(separator: " ").map { String($0) }
        var numbers = Array(repeating: (0, ""), count: N)

        for idx in 0..<N {
            seq[ids[idx]-1] = idx
        }

        for _ in 0..<3 {
            for idx in 0..<N {
                numbers[idx].0 = seq[idx]
                numbers[idx].1 = input[idx]
            }

            numbers.sort { $0.0 < $1.0 }

            for idx in 0..<N {
                input[idx] = numbers[idx].1
            }
        }

        numbers.forEach { print($0.1) }
    }
}
