//
//  22352.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 4/12/24.
//

//  문제 링크: https://www.acmicpc.net/problem/22352
//  알고리즘 분류: 그래프 이론, 그래프 탐색, 너비 우선 탐색, 깊이 우선 탐색

class BOJ22352: Solvable {
    func run() {
        // 메모리: 69108KB, 시간: 8ms, 코드 길이: 1107B
        let NM = readLine()!.split(separator: " ").map { Int($0)! }
        var before = Array(repeating: Array(repeating: 0, count: NM[1]), count: NM[0])
        var after = before
        var visited = Array(repeating: Array(repeating: false, count: NM[1]), count: NM[0])
        var queue = [(Int, Int)]()
        var idx = 0
        var diff = 0

        for row in 0..<NM[0] {
            before[row] = readLine()!.split(separator: " ").map { Int($0)! }
        }

        for row in 0..<NM[0] {
            after[row] = readLine()!.split(separator: " ").map { Int($0)! }

            if diff == 0 {
                for col in 0..<NM[1] where before[row][col] != after[row][col] {
                    queue.append((row, col))
                    diff = after[row][col]
                    visited[row][col] = true
                    break
                }
            }
        }

        while idx < queue.count {
            let (row, col) = queue[idx]
            idx += 1

            for (nr, nc) in [(row-1, col), (row, col-1), (row, col+1), (row+1, col)] where 0..<NM[0] ~= nr && 0..<NM[1] ~= nc && before[row][col] == before[nr][nc] && !visited[nr][nc] {
                queue.append((nr, nc))
                visited[nr][nc] = true
            }

            before[row][col] = diff
        }

        print(before == after ? "YES" : "NO")
    }
}
