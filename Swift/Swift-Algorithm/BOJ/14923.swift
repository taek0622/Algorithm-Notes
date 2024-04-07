//
//  14923.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 4/7/24.
//

//  문제 링크: https://www.acmicpc.net/problem/14923
//  알고리즘 분류: 그래프 이론, 그래프 탐색, 너비 우선 탐색

class BOJ14923: Solvable {
    func run() {
        // 메모리: 128276KB, 시간: 300ms, 코드 길이: 1162B
        let NM = readLine()!.split(separator: " ").map { Int($0)! }
        let H = readLine()!.split(separator: " ").map { Int($0)! - 1 }
        let E = readLine()!.split(separator: " ").map { Int($0)! - 1 }
        var map = Array(repeating: Array(repeating: false, count: NM[1]), count: NM[0])
        var visited = Array(repeating: Array(repeating: Array(repeating: -1, count: 2), count: NM[1]), count: NM[0])

        for idx in 0..<NM[0] {
            map[idx] = readLine()!.split(separator: " ").map { $0 == "0" }
        }

        var queue = [(H[0], H[1], 0)]
        var idx = 0
        visited[H[0]][H[1]][0] = 0

        while idx < queue.count {
            let (row, col, used) = queue[idx]
            idx += 1

            if row == E[0] && col == E[1] {
                break
            }

            for (nr, nc) in [(row-1, col), (row, col-1), (row, col+1), (row+1, col)] where 0..<NM[0] ~= nr && 0..<NM[1] ~= nc && visited[nr][nc][used] == -1 {
                if map[nr][nc] {
                    queue.append((nr, nc, used))
                    visited[nr][nc][used] = visited[row][col][used] + 1
                } else if !map[nr][nc] && used == 0 {
                    queue.append((nr, nc, used+1))
                    visited[nr][nc][used+1] = visited[row][col][used] + 1
                }
            }
        }

        print(visited[E[0]][E[1]].max()!)
    }
}
