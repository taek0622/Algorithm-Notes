//
//  1730.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 1/11/25.
//

//  문제 링크: https://www.acmicpc.net/problem/1730
//  알고리즘 분류: 구현, 시뮬레이션

import Shared

public struct BOJ1730: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69104KB, 시간: 8ms, 코드 길이: 1155B
        let N = Int(readLine()!)!
        var board = Array(repeating: Array(repeating: ".", count: N), count: N)
        let moves = readLine()!
        var (row, col) = (0, 0)

        for move in moves {
            switch move {
                case "U":
                    if 0..<N ~= row-1 {
                        moveRow()

                        row -= 1

                        moveRow()
                    }
                case "D":
                    if 0..<N ~= row+1 {
                        moveRow()

                        row += 1

                        moveRow()
                    }
                case "L":
                    if 0..<N ~= col-1 {
                        moveCol()

                        col -= 1

                        moveCol()
                    }
                case "R":
                    if 0..<N ~= col+1 {
                        moveCol()

                        col += 1

                        moveCol()
                    }
                default:
                    break
            }
        }

        board.forEach {
            print($0.joined())
        }

        func moveRow() {
            if board[row][col] == "." {
                board[row][col] = "|"
            } else if board[row][col] == "-" {
                board[row][col] = "+"
            }
        }

        func moveCol() {
            if board[row][col] == "." {
                board[row][col] = "-"
            } else if board[row][col] == "|" {
                board[row][col] = "+"
            }
        }
    }
}
