//
//  1485.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2/28/24.
//

//  문제 링크: https://www.acmicpc.net/problem/1485
//  알고리즘 분류: 정렬, 기하학

import Shared

public struct BOJ1485: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69108KB, 시간: 16ms, 코드 길이: 729B
        let T = Int(readLine()!)!

        for _ in 0..<T {
            var dots = Array(repeating: (0, 0), count: 4)
            var lines = [Int]()

            for idx in 0..<4 {
                let input = readLine()!.split(separator: " ").map { Int($0)! }
                dots[idx] = (input[0], input[1])
            }

            for baseIdx in 0..<4 {
                for compIdx in baseIdx+1..<4 {
                    lines.append((dots[baseIdx].0 - dots[compIdx].0) * (dots[baseIdx].0 - dots[compIdx].0) + (dots[baseIdx].1 - dots[compIdx].1) * (dots[baseIdx].1 - dots[compIdx].1))
                }
            }

            lines.sort()

            if lines[0] == lines[1] && lines[1] == lines[2] && lines[2] == lines[3] && lines[4] == lines[5] && lines[0] + lines[1] == lines[5] {
                print(1)
            } else {
                print(0)
            }
        }
    }
}
