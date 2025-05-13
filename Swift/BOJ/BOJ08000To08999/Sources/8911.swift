//
//  8911.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2/22/25.
//

//  문제 링크: https://www.acmicpc.net/problem/8911
//  알고리즘 분류: 구현, 시뮬레이션

import Shared

public struct BOJ8911: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69100KB, 시간: 160ms, 코드 길이: 1169B
        let T = Int(readLine()!)!

        for _ in 0..<T {
            var minXY = (0, 0)
            var maxXY = (0, 0)
            var current = (0, 0, 0)
            let commands = readLine()!

            for command in commands {
                if command == "F" {
                    if current.2 == 0 {
                        current.1 += 1
                    } else if current.2 == 1 {
                        current.0 += 1
                    } else if current.2 == 2 {
                        current.1 -= 1
                    } else {
                        current.0 -= 1
                    }
                } else if command == "B" {
                    if current.2 == 0 {
                        current.1 -= 1
                    } else if current.2 == 1 {
                        current.0 -= 1
                    } else if current.2 == 2 {
                        current.1 += 1
                    } else {
                        current.0 += 1
                    }
                } else if command == "L" {
                    current.2 = (current.2 + 4 - 1) % 4
                } else {
                    current.2 = (current.2 + 4 + 1) % 4
                }

                minXY.0 = min(minXY.0, current.0)
                minXY.1 = min(minXY.1, current.1)
                maxXY.0 = max(maxXY.0, current.0)
                maxXY.1 = max(maxXY.1, current.1)
            }

            print((maxXY.0 - minXY.0) * (maxXY.1 - minXY.1))
        }
    }
}
