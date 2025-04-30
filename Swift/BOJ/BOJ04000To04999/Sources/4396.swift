//
//  4396.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 12/21/24.
//

//  문제 링크: https://www.acmicpc.net/problem/4396
//  알고리즘 분류: 구현

class BOJ4396: Solvable {
    func run() {
        // 메모리: 69108KB, 시간: 8ms, 코드 길이: 1070B
        let n = Int(readLine()!)!
        var mine = Array(repeating: Array(repeating: false, count: n), count: n)
        var board = Array(repeating: Array(repeating: 0, count: n), count: n)
        var mask = Array(repeating: Array(repeating: true, count: n), count: n)
        var isMine = false

        for row in 0..<n {
            mine[row] = readLine()!.map { $0 == "*" }
        }

        for row in 0..<n {
            mask[row] = readLine()!.map { $0 == "x" }
        }

        for row in 0..<n {
            for col in 0..<n where mine[row][col] {
                if mask[row][col] {
                    isMine = true
                }

                for (nr, nc) in [(row-1, col-1), (row-1, col), (row-1, col+1), (row, col-1), (row, col+1), (row+1, col-1), (row+1, col), (row+1, col+1)] where 0..<n ~= nr && 0..<n ~= nc && !mine[nr][nc] {
                    board[nr][nc] += 1
                }

                board[row][col] = -1
            }
        }

        for row in 0..<n {
            for col in 0..<n where !mask[row][col] {
                if board[row][col] == -1 && isMine {
                    continue
                }

                board[row][col] = -2
            }
        }

        board.forEach {
            print($0.map { $0 > -1 ? "\($0)" : $0 == -1 ? "*" : "." }.joined())
        }
    }
}
