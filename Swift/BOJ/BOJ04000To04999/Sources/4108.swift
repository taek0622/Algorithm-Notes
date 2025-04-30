//
//  4108.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 1/7/25.
//

//  문제 링크: https://www.acmicpc.net/problem/4108
//  알고리즘 분류: 구현

class BOJ4108: Solvable {
    func run() {
        // 메모리: 69636KB, 시간: 52ms, 코드 길이: 759B
        while let input = readLine(), input != "0 0" {
            let RC = input.split(separator: " ").map { Int($0)! }
            var board = Array(repeating: Array(repeating: 0, count: RC[1]), count: RC[0])
            var mines = [(Int, Int)]()

            for row in 0..<RC[0] {
                board[row] = readLine()!.map { $0 == "." ? 0 : -1 }

                for col in 0..<RC[1] where board[row][col] == -1 {
                    mines.append((row, col))
                }
            }

            for (r, c) in mines {
                for (nr, nc) in [(r-1, c-1), (r-1, c), (r-1, c+1), (r, c-1), (r, c+1), (r+1, c-1), (r+1, c), (r+1, c+1)] where 0..<RC[0] ~= nr && 0..<RC[1] ~= nc && board[nr][nc] >= 0 {
                    board[nr][nc] += 1
                }
            }

            board.forEach {
                print($0.map { $0 == -1 ? "*" : "\($0)" }.joined())
            }
        }
    }
}
