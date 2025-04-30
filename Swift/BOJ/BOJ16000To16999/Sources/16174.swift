//
//  16174.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 5/15/24.
//

//  문제 링크: https://www.acmicpc.net/problem/16174
//  알고리즘 분류: 그래프 이론, 그래프 탐색, 너비 우선 탐색, 깊이 우선 탐색

class BOJ16174: Solvable {
    func run() {
        // 메모리: 69280KB, 시간: 12ms, 코드 길이: 729B
        let N = Int(readLine()!)!
        var map = Array(repeating: Array(repeating: 0, count: N), count: N)
        var visited = Array(repeating: Array(repeating: false, count: N), count: N)
        var isArrived = false

        for row in 0..<N {
            map[row] = readLine()!.split(separator: " ").map { Int($0)! }
        }

        var queue = [(0, 0)]
        visited[0][0] = true
        var idx = 0

        while idx < queue.count {
            let (row, col) = queue[idx]
            idx += 1

            if row == N - 1 && col == N - 1 {
                isArrived = true
                break
            }

            for (nr, nc) in [(row, col+map[row][col]), (row+map[row][col], col)] where 0..<N ~= nr && 0..<N ~= nc && !visited[nr][nc] {
                visited[nr][nc] = true
                queue.append((nr, nc))
            }
        }

        print(isArrived ? "HaruHaru" : "Hing")
    }
}
