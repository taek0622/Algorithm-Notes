//
//  7562.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 11/1/23.
//

//  문제 링크: https://www.acmicpc.net/problem/7562
//  알고리즘 분류: 그래프 이론, 그래프 탐색, 너비 우선 탐색

import Shared

public struct BOJ7562: Solvable {
    public init() {}

    public func run() {
        // 메모리: 73436KB, 시간: 64ms, 코드 길이: 882B
        let T = Int(readLine()!)!

        for _ in 0..<T {
            let l = Int(readLine()!)!
            var start = readLine()!.split(separator: " ").map { Int(String($0))! }
            var target = readLine()!.split(separator: " ").map { Int(String($0))! }
            var queue = [(start[0], start[1])]
            var idx = 0
            var board = Array(repeating: Array(repeating: -1, count: l), count: l)
            board[start[0]][start[1]] = 0

            while idx < queue.count {
                let (x, y) = queue[idx]
                idx += 1

                if (x, y) == (target[0], target[1]) {
                    print(board[x][y])
                    break
                }

                [(x-2, y-1), (x-2, y+1), (x-1, y-2), (x-1, y+2), (x+1, y-2), (x+1, y+2), (x+2, y-1), (x+2, y+1)].forEach {
                    if 0..<l ~= $0.0 && 0..<l ~= $0.1 && board[$0.0][$0.1] == -1 {
                        queue.append($0)
                        board[$0.0][$0.1] = board[x][y] + 1
                    }
                }
            }
        }
    }
}
