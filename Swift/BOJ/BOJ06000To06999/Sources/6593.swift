//
//  6593.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 3/27/24.
//

//  문제 링크: https://www.acmicpc.net/problem/6593
//  알고리즘 분류: 그래프 이론, 그래프 탐색, 너비 우선 탐색

import Shared

public struct BOJ6593: Solvable {
    public init() {}

    public func run() {
        // 메모리: 70788KB, 시간: 16ms, 코드 길이: 1596B
        while let input = readLine(), input != "0 0 0" {
            if input == "" { continue }

            let LRC = input.split(separator: " ").map { Int($0)! }
            var building = Array(repeating: Array(repeating: Array(repeating: false, count: LRC[2]), count: LRC[1]), count: LRC[0])
            var start = (0, 0, 0)
            var end = (0, 0, 0)
            var time = 0

            for floor in 0..<LRC[0] {
                for row in 0..<LRC[1] {
                    let space = Array(readLine()!)
                    building[floor][row] = space.map { $0 != "#" }

                    if space.contains("S") || space.contains("E") {
                        for col in space.indices {
                            if space[col] == "S" {
                                start = (floor, row, col)
                            } else if space[col] == "E" {
                                end = (floor, row, col)
                            }
                        }
                    }
                }

                _ = readLine()
            }

            var queue = [(start, 0)]
            var idx = 0

            while idx < queue.count {
                let ((floor, row, col), minute) = queue[idx]
                idx += 1

                if (floor, row, col) == end {
                    time = minute
                    break
                }

                [(floor-1, row, col), (floor, row-1, col), (floor, row, col-1), (floor, row, col+1), (floor, row+1, col), (floor+1, row, col)].forEach {
                    if 0..<LRC[0] ~= $0.0 && 0..<LRC[1] ~= $0.1 && 0..<LRC[2] ~= $0.2 && building[$0.0][$0.1][$0.2] {
                        queue.append((($0.0, $0.1, $0.2), minute + 1))
                        building[$0.0][$0.1][$0.2] = false
                    }
                }
            }

            print(time != 0 ? "Escaped in \(time) minute(s)." : "Trapped!")
        }
    }
}
