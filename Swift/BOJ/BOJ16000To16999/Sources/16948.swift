//
//  16948.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 5/5/24.
//

//  문제 링크: https://www.acmicpc.net/problem/16948
//  알고리즘 분류: 그래프 이론, 그래프 탐색, 너비 우선 탐색

import Shared

public struct BOJ16948: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69724KB, 시간: 8ms, 코드 길이: 660B
        let N = Int(readLine()!)!
        var board = Array(repeating: Array(repeating: false, count: N), count: N)
        let se = readLine()!.split(separator: " ").map { Int($0)! }
        var queue = [(se[0], se[1], 0)]
        var idx = 0
        board[se[0]][se[1]] = true
        var count = -1

        while idx < queue.count {
            let (row, col, move) = queue[idx]
            idx += 1

            if row == se[2] && col == se[3] {
                count = move
                break
            }

            for (nr, nc) in [(row-2, col-1), (row-2, col+1), (row, col-2), (row, col+2), (row+2, col-1), (row+2, col+1)] where 0..<N ~= nr && 0..<N ~= nc && !board[nr][nc] {
                board[nr][nc] = true
                queue.append((nr, nc, move+1))
            }
        }

        print(count)
    }
}
