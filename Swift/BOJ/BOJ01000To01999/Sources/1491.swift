//
//  1491.swift
//  BOJ01000To01999
//
//  Created by 김민택 on 5/13/25.
//

//  문제 링크: https://www.acmicpc.net/problem/1491
//  알고리즘 분류: 구현, 시뮬레이션

import Shared

public struct BOJ1491: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69108KB, 시간: 8ms, 코드 길이: 778B
        enum Direction: Int {
            case east = 0
            case north = 1
            case west = 2
            case south = 3
        }

        var NM = readLine()!.split(separator: " ").map { Int($0)! }
        NM[1] -= 1
        var (row, col) = (0, -1)
        var direction = Direction.east

        while NM[0] > 0 && NM[1] > 0 {
            switch direction {
                case .east:
                col += NM[0]
                NM[0] -= 1
                case .north:
                row += NM[1]
                NM[1] -= 1
                case .west:
                col -= NM[0]
                NM[0] -= 1
                case .south:
                row -= NM[1]
                NM[1] -= 1
            }

            direction = Direction(rawValue: (direction.rawValue + 1) % 4)!
        }

        switch direction {
            case .east:
            col += NM[0]
            case .north:
            row += NM[1]
            case .west:
            col -= NM[0]
            case .south:
            row -= NM[1]
        }

        print("\(col) \(row)")
    }
}
