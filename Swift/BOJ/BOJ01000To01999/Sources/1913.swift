//
//  1913.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 6/1/24.
//

//  문제 링크: https://www.acmicpc.net/problem/1913
//  알고리즘 분류: 구현

import Shared

public struct BOJ1913: Solvable {
    // 메모리: 95512KB, 시간: 220ms, 코드 길이: 1224B
    public init() {}

    public func run() {
        enum Direction {
            case left
            case right
            case up
            case down
        }

        let N = Int(readLine()!)!
        let target = Int(readLine()!)!
        var map = Array(repeating: Array(repeating: 0, count: N), count: N)
        var (tr, tc) = (0, 0)
        var now = N * N
        var (row, col) = (0, 0)
        var direction = Direction.down

        while now > 0 {
            map[row][col] = now

            if now == target {
                (tr, tc) = (row + 1, col + 1)
            }

            now -= 1

            switch direction {
            case .left:
                if 0..<N ~= col-1 && map[row][col-1] == 0 {
                    col -= 1
                } else {
                    direction = .down
                    row += 1
                }
            case .right:
                if 0..<N ~= col+1 && map[row][col+1] == 0 {
                    col += 1
                } else {
                    direction = .up
                    row -= 1
                }
            case .up:
                if 0..<N ~= row-1 && map[row-1][col] == 0 {
                    row -= 1
                } else {
                    direction = .left
                    col -= 1
                }
            case .down:
                if 0..<N ~= row+1 && map[row+1][col] == 0 {
                    row += 1
                } else {
                    direction = .right
                    col += 1
                }
            }
        }

        print(map.map { String($0.map { String($0) }.joined(separator: " ")) }.joined(separator: "\n"))
        print(tr, tc)
    }
}
