//
//  3184.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 5/2/24.
//

//  문제 링크: https://www.acmicpc.net/problem/3184
//  알고리즘 분류: 그래프 이론, 그래프 탐색, 너비 우선 탐색, 깊이 우선 탐색

class BOJ3184: Solvable {
    func run() {
        // 메모리: 71720KB, 시간: 20ms, 코드 길이: 1249B
        let RC = readLine()!.split(separator: " ").map { Int($0)! }
        var map = Array(repeating: Array(repeating: "", count: RC[1]), count: RC[0])
        var visited = Array(repeating: Array(repeating: false, count: RC[1]), count: RC[0])
        var (totalSheeps, totalWolves) = (0, 0)

        for row in 0..<RC[0] {
            map[row] = readLine()!.map { String($0) }
        }

        for row in 0..<RC[0] {
            for col in 0..<RC[1] where !visited[row][col] {
                var (sectionSheeps, sectionWolves) = (0, 0)
                var queue = [(row, col)]
                visited[row][col] = true
                var idx = 0

                while idx < queue.count {
                    let (r, c) = queue[idx]
                    idx += 1

                    if map[r][c] == "o" {
                        sectionSheeps += 1
                    } else if map[r][c] == "v" {
                        sectionWolves += 1
                    }

                    for (nr, nc) in [(r-1, c), (r, c-1), (r, c+1), (r+1, c)] where 0..<RC[0] ~= nr && 0..<RC[1] ~= nc && !visited[nr][nc] && map[nr][nc] != "#" {
                        visited[nr][nc] = true
                        queue.append((nr, nc))
                    }
                }

                if sectionSheeps > sectionWolves {
                    totalSheeps += sectionSheeps
                } else {
                    totalWolves += sectionWolves
                }
            }
        }

        print(totalSheeps, totalWolves)
    }
}
