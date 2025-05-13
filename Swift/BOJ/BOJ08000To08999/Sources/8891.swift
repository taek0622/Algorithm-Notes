//
//  8891.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 4/7/25.
//

//  문제 링크: https://www.acmicpc.net/problem/8891
//  알고리즘 분류: 수학, 구현, 브루트포스 알고리즘

import Shared

public struct BOJ8891: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69104KB, 시간: 28ms, 코드 길이: 763B
        let T = Int(readLine()!)!

        for _ in 0..<T {
            let input = readLine()!.split(separator: " ").map { Int($0)! }
            let (x1, y1) = findCoordinate(input[0])
            let (x2, y2) = findCoordinate(input[1])
            print(findNumber(x1+x2, y1+y2))
        }

        func findCoordinate(_ target: Int) -> (Int, Int) {
            var (x, y, current, nextAdd) = (1, 1, 1, 1)

            while current + nextAdd <= target {
                y += 1
                current += nextAdd
                nextAdd += 1
            }

            while current < target {
                x += 1
                y -= 1
                current += 1
            }

            return (x, y)
        }

        func findNumber(_ x: Int, _ y: Int) -> Int {
            var (num, add) = (1, 1)

            for _ in 0..<x + y - 2 {
                num += add
                add += 1
            }

            for _ in 1..<x {
                num += 1
            }

            return num
        }
    }
}
