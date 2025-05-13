//
//  1012.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/09/20.
//

//  문제 링크: https://www.acmicpc.net/problem/1012
//  알고리즘 분류: 그래프 이론, 그래프 탐색, 너비 우선 탐색, 깊이 우선 탐색

import Shared

public struct BOJ1012: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69108KB, 시간: 16ms, 코드 길이: 884B
        let T = Int(readLine()!)!

        for _ in 0..<T {
            let info = readLine()!.split(separator: " ").map { Int(String($0))! }
            var field = Array(repeating: Array(repeating: 0, count: info[1]), count: info[0])
            var count = 0

            for _ in 0..<info[2] {
                let coord = readLine()!.split(separator: " ").map { Int(String($0))! }
                field[coord[0]][coord[1]] = 1
            }

            for row in 0..<info[0] {
                for col in 0..<info[1] where field[row][col] == 1 {
                    var queue = [(x: row, y: col)]

                    while !queue.isEmpty {
                        let (x, y) = queue.removeFirst()

                        if 0..<info[0] ~= x && 0..<info[1] ~= y && field[x][y] == 1 {
                            queue.append(contentsOf: [(x-1, y), (x, y-1), (x, y+1), (x+1, y)])
                            field[x][y] = 0
                        }
                    }

                    count += 1
                }
            }

            print(count)
        }
    }
}
