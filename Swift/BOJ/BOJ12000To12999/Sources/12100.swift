//
//  12100.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 11/17/24.
//

//  문제 링크: https://www.acmicpc.net/problem/12100
//  알고리즘 분류: 구현, 브루트포스 알고리즘, 시뮬레이션, 백트래킹

import Shared

public struct BOJ12100: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69112KB, 시간: 36ms, 코드 길이: 4061B
        let N = Int(readLine()!)!
        var board = Array(repeating: Array(repeating: 0, count: N), count: N)

        for row in 0..<N {
            board[row] = readLine()!.split(separator: " ").map { Int($0)! }
        }

        print(move(board, 0))

        func move(_ board: [[Int]], _ depth: Int) -> Int {
            if depth == 5 {
                var maxNum = 0

                for row in 0..<N {
                    for col in 0..<N where board[row][col] > maxNum {
                        maxNum = board[row][col]
                    }
                }

                return maxNum
            }

            return max(move(moveUp(board), depth+1), move(moveDown(board), depth+1), move(moveLeft(board), depth+1), move(moveRight(board), depth+1))
        }

        func moveUp(_ board: [[Int]]) -> [[Int]] {
            var board = board

            for col in 0..<N {
                for row in 0..<N-1 where board[row][col] == 0 {
                    for nr in row..<N where board[nr][col] != 0 {
                        board[row][col] = board[nr][col]
                        board[nr][col] = 0
                        break
                    }
                }

                for row in 0..<N-1 {
                    if board[row][col] == board[row+1][col] {
                        board[row][col] *= 2
                        board[row+1][col] = 0
                    }
                }

                for row in 0..<N-1 where board[row][col] == 0 {
                    for nr in row..<N where board[nr][col] != 0 {
                        board[row][col] = board[nr][col]
                        board[nr][col] = 0
                        break
                    }
                }
            }

            return board
        }

        func moveDown(_ board: [[Int]]) -> [[Int]] {
            var board = board

            for col in 0..<N {
                for row in stride(from: N-1, to: 0, by: -1) where board[row][col] == 0 {
                    for pr in stride(from: row, through: 0, by: -1) where board[pr][col] != 0 {
                        board[row][col] = board[pr][col]
                        board[pr][col] = 0
                        break
                    }
                }

                for row in stride(from: N-1, to: 0, by: -1) {
                    if board[row][col] == board[row-1][col] {
                        board[row][col] *= 2
                        board[row-1][col] = 0
                    }
                }

                for row in stride(from: N-1, to: 0, by: -1) where board[row][col] == 0 {
                    for pr in stride(from: row, through: 0, by: -1) where board[pr][col] != 0 {
                        board[row][col] = board[pr][col]
                        board[pr][col] = 0
                        break
                    }
                }
            }

            return board
        }

        func moveLeft(_ board: [[Int]]) -> [[Int]] {
            var board = board

            for row in 0..<N {
                for col in 0..<N-1 where board[row][col] == 0 {
                    for nc in col..<N where board[row][nc] != 0 {
                        board[row][col] = board[row][nc]
                        board[row][nc] = 0
                        break
                    }
                }

                for col in 0..<N-1 {
                    if board[row][col] == board[row][col+1] {
                        board[row][col] *= 2
                        board[row][col+1] = 0
                    }
                }

                for col in 0..<N-1 where board[row][col] == 0 {
                    for nc in col..<N where board[row][nc] != 0 {
                        board[row][col] = board[row][nc]
                        board[row][nc] = 0
                        break
                    }
                }
            }

            return board
        }

        func moveRight(_ board: [[Int]]) -> [[Int]] {
            var board = board

            for row in 0..<N {
                for col in stride(from: N-1, to: 0, by: -1) where board[row][col] == 0 {
                    for pc in stride(from: col, through: 0, by: -1) where board[row][pc] != 0 {
                        board[row][col] = board[row][pc]
                        board[row][pc] = 0
                        break
                    }
                }

                for col in stride(from: N-1, to: 0, by: -1) {
                    if board[row][col] == board[row][col-1] {
                        board[row][col] *= 2
                        board[row][col-1] = 0
                    }
                }

                for col in stride(from: N-1, to: 0, by: -1) where board[row][col] == 0 {
                    for pc in stride(from: col, through: 0, by: -1) where board[row][pc] != 0 {
                        board[row][col] = board[row][pc]
                        board[row][pc] = 0
                        break
                    }
                }
            }

            return board
        }
    }
}
