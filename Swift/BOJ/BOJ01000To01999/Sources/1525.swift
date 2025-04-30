//
//  1525.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 3/30/24.
//

//  문제 링크: https://www.acmicpc.net/problem/1525
//  알고리즘 분류: 자료 구조, 그래프 이론, 그래프 탐색, 너비 우선 탐색, 해시를 사용한 집합과 맵

class BOJ1525: Solvable {
    func run() {
        // 메모리: 107948KB, 시간: 384ms, 코드 길이: 845B
        var map = Array(repeating: Array(repeating: 0, count: 3), count: 3)
        var count = -1
        var (zr, zc) = (0, 0)

        for row in 0..<3 {
            map[row] = readLine()!.split(separator: " ").map { Int($0)! }

            for col in 0..<3 where map[row][col] == 0 {
                (zr, zc) = (row, col)
            }
        }

        var visited = Set([map])
        var queue = [(0, map, zr, zc)]
        var idx = 0

        while idx < queue.count {
            let (move, now, row, col) = queue[idx]
            idx += 1

            if now == [[1, 2, 3], [4, 5, 6], [7, 8, 0]] {
                count = move
                break
            }

            for (nr, nc) in [(row-1, col), (row, col-1), (row, col+1), (row+1, col)] where 0..<3 ~= nr && 0..<3 ~= nc {
                var next = now
                next[row][col] = next[nr][nc]
                next[nr][nc] = 0

                if visited.insert(next).inserted {
                    queue.append((move+1, next, nr, nc))
                }
            }
        }

        print(count)
    }
}
