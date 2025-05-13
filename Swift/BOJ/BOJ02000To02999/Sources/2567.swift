//
//  2567.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2/21/25.
//

//  문제 링크: https://www.acmicpc.net/problem/2567
//  알고리즘 분류: 구현

import Shared

public struct BOJ2567: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69108KB, 시간: 8ms, 코드 길이: 650B
        var board = Array(repeating: Array(repeating: false, count: 102), count: 102)
        let N = Int(readLine()!)!
        var outline = 0

        for _ in 0..<N {
            let xy = readLine()!.split(separator: " ").map { Int($0)! }

            for row in xy[0]..<xy[0]+10 {
                for col in xy[1]..<xy[1]+10 {
                    board[row][col] = true
                }
            }
        }

        var visited = board

        for row in 0..<102 {
            for col in 0..<102 where !visited[row][col] {
                for (nr, nc) in [(row-1, col), (row, col-1), (row, col+1), (row+1, col)] where 0..<102 ~= nr && 0..<102 ~= nc && board[nr][nc] {
                    outline += 1
                }

                visited[row][col] = true
            }
        }

        print(outline)
    }
}
