//
//  18405.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 4/2/24.
//

//  문제 링크: https://www.acmicpc.net/problem/18405
//  알고리즘 분류: 구현, 그래프 이론, 그래프 탐색, 너비 우선 탐색

class BOJ18405: Solvable {
    func run() {
        // 메모리: 72624KB, 시간: 24ms, 코드 길이: 879B
        let NK = readLine()!.split(separator: " ").map { Int($0)! }
        var tube = Array(repeating: Array(repeating: 0, count: NK[0]), count: NK[0])
        var queue = [(Int, Int, Int, Int)]()

        for row in 0..<NK[0] {
            tube[row] = readLine()!.split(separator: " ").map { Int($0)! }

            for col in 0..<NK[0] where tube[row][col] != 0 {
                queue.append((row, col, tube[row][col], 0))
            }
        }

        queue.sort { $0.2 < $1.2 }
        let SXY = readLine()!.split(separator: " ").map { Int($0)! }
        var idx = 0

        while idx < queue.count {
            let (row, col, species, time) = queue[idx]
            idx += 1

            if time == SXY[0] {
                break
            }

            for (nr, nc) in [(row-1, col), (row, col-1), (row, col+1), (row+1, col)] where 0..<NK[0] ~= nr && 0..<NK[0] ~= nc && tube[nr][nc] == 0 {
                tube[nr][nc] = species
                queue.append((nr, nc, species, time + 1))
            }
        }

        print(tube[SXY[1] - 1][SXY[2] - 1])
    }
}
