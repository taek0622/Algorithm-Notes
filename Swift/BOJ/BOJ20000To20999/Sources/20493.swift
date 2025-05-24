//
//  20493.swift
//  BOJ20000To20999
//
//  Created by 김민택 on 5/24/25.
//

//  문제 링크: https://www.acmicpc.net/problem/20493
//  알고리즘 분류: 구현, 시뮬레이션

import Shared

public struct BOJ20493: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69108KB, 시간: 144ms, 코드 길이: 964B
        enum Direction: Int {
            case east = 0
            case south = 1
            case west = 2
            case north = 3
        }

        let NT = readLine()!.split(separator: " ").map { Int($0)! }
        var (x, y, time, direction) = (0, 0, 0, Direction.east)

        for _ in stride(from: 0, to: NT[0], by: 1) {
            let TS = readLine()!.split(separator: " ").map { String($0) }
            let Ti = Int(TS[0])!

            switch direction {
                case .east:
                    x += (Ti - time)
                case .south:
                    y -= (Ti - time)
                case .west:
                    x -= (Ti - time)
                case .north:
                    y += (Ti - time)
            }

            if TS[1] == "left" {
                direction = Direction(rawValue: (direction.rawValue + 3) % 4)!
            } else {
                direction = Direction(rawValue: (direction.rawValue + 1) % 4)!
            }

            time = Ti
        }

        switch direction {
            case .east:
                x += (NT[1] - time)
            case .south:
                y -= (NT[1] - time)
            case .west:
                x -= (NT[1] - time)
            case .north:
                y += (NT[1] - time)
        }

        print(x, y)
    }
}
