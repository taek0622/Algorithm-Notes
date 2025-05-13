//
//  14500.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 11/25/23.
//

//  문제 링크: https://www.acmicpc.net/problem/14500
//  알고리즘 분류: 구현, 브루트포스 알고리즘

import Shared

public struct BOJ14500: Solvable {
    public init() {}

    public func run() {
        solution2()
    }

    // 메모리: 70700KB, 시간: 68ms, 코드 길이: 1888B
    private func solution1() {
        let NM = readLine()!.split(separator: " ").map { Int(String($0))! }
        var board = Array(repeating: Array(repeating: 0, count: NM[1]), count: NM[0])
        var maxSum = 0

        for row in 0..<NM[0] {
            board[row] = readLine()!.split(separator: " ").map { Int(String($0))! }
        }

        for row in 0..<NM[0] {
            for col in 0..<NM[1] - 3 {
                maxSum = max(maxSum, board[row][col...col+3].reduce(0, +))
            }
        }

        for row in 0..<NM[0] - 1 {
            for col in 0..<NM[1] - 1 {
                maxSum = max(maxSum, board[row][col...col+1].reduce(0, +) + board[row+1][col...col+1].reduce(0, +))

                if col < NM[1] - 2 {
                    let topRow = board[row][col...col+2].reduce(0, +)
                    let bottomRow = board[row+1][col...col+2].reduce(0, +)
                    maxSum = max(maxSum, topRow + board[row+1][col], topRow + board[row+1][col+2], bottomRow + board[row][col], bottomRow + board[row][col+2], topRow + board[row+1][col+1], bottomRow + board[row][col+1], board[row][col+1...col+2].reduce(0, +) + board[row+1][col...col+1].reduce(0, +), board[row][col...col+1].reduce(0, +) + board[row+1][col+1...col+2].reduce(0, +))
                }
            }
        }

        for row in 0..<NM[0] - 2 {
            for col in 0..<NM[1] - 1 {
                let leftCol = board[row][col] + board[row+1][col] + board[row+2][col]
                let rightCol = board[row][col+1] + board[row+1][col+1] + board[row+2][col+1]
                let midRow = board[row+1][col...col+1].reduce(0, +)
                maxSum = max(maxSum, leftCol + board[row][col+1], leftCol + board[row+1][col+1], leftCol + board[row+2][col+1], rightCol + board[row][col], rightCol + board[row+1][col], rightCol + board[row+2][col], midRow + board[row][col] + board[row+2][col+1], midRow + board[row][col+1] + board[row+2][col])
            }
        }

        for row in 0..<NM[0] - 3 {
            for col in 0..<NM[1] {
                maxSum = max(maxSum, board[row][col] + board[row+1][col] + board[row+2][col] + board[row+3][col])
            }
        }

        print(maxSum)
    }

    // 메모리: 70700KB, 시간: 68ms, 코드 길이: 1820B
    private func solution2() {
        let NM = readLine()!.split(separator: " ").map { Int(String($0))! }
        var board = Array(repeating: Array(repeating: 0, count: NM[1]), count: NM[0])
        var maxSum = 0

        for row in 0..<NM[0] {
            board[row] = readLine()!.split(separator: " ").map { Int(String($0))! }
        }

        for row in 0..<NM[0] {
            for col in 0..<NM[1] - 3 {
                maxSum = max(maxSum, board[row][col...col+3].reduce(0, +))
            }
        }

        for row in 0..<NM[0] - 1 {
            for col in 0..<NM[1] - 1 {
                maxSum = max(maxSum, board[row][col...col+1].reduce(0, +) + board[row+1][col...col+1].reduce(0, +))

                if col < NM[1] - 2 {
                    let topRow = board[row][col...col+2].reduce(0, +)
                    let bottomRow = board[row+1][col...col+2].reduce(0, +)
                    maxSum = max(maxSum, topRow + max(board[row+1][col], board[row+1][col+1], board[row+1][col+2]), bottomRow + max(board[row][col], board[row][col+1], board[row][col+2]), board[row][col...col+1].reduce(0, +) + board[row+1][col+1...col+2].reduce(0, +), board[row][col+1...col+2].reduce(0, +) + board[row+1][col...col+1].reduce(0, +))
                }
            }
        }

        for row in 0..<NM[0] - 2 {
            for col in 0..<NM[1] - 1 {
                let leftCol = board[row][col] + board[row+1][col] + board[row+2][col]
                let rightCol = board[row][col+1] + board[row+1][col+1] + board[row+2][col+1]
                let midRow = board[row+1][col...col+1].reduce(0, +)
                maxSum = max(maxSum, leftCol + max(board[row][col+1], board[row+1][col+1], board[row+2][col+1]), rightCol + max(board[row][col], board[row+1][col], board[row+2][col]), midRow + max(board[row][col] + board[row+2][col+1], board[row][col+1] + board[row+2][col]))
            }
        }

        for row in 0..<NM[0] - 3 {
            for col in 0..<NM[1] {
                maxSum = max(maxSum, board[row][col] + board[row+1][col] + board[row+2][col] + board[row+3][col])
            }
        }

        print(maxSum)
    }

    // 메모리: 70700KB, 시간: 68ms, 코드 길이: 1896B
    private func solution3() {
        let NM = readLine()!.split(separator: " ").map { Int(String($0))! }
        var board = Array(repeating: Array(repeating: 0, count: NM[1]), count: NM[0])
        var maxSum = 0

        for row in 0..<NM[0] {
            board[row] = readLine()!.split(separator: " ").map { Int(String($0))! }
        }

        for row in 0..<NM[0] {
            for col in 0..<NM[1] {
                if col < NM[1] - 3 {
                    maxSum = max(maxSum, board[row][col...col+3].reduce(0, +))
                }

                if row < NM[0] - 1 {
                    if col < NM[1] - 1 {
                        maxSum = max(maxSum, board[row][col...col+1].reduce(0, +) + board[row+1][col...col+1].reduce(0, +))
                    }

                    if col < NM[1] - 2 {
                        let topRow = board[row][col...col+2].reduce(0, +)
                        let bottomRow = board[row+1][col...col+2].reduce(0, +)
                        maxSum = max(maxSum, topRow + max(board[row+1][col], board[row+1][col+1], board[row+1][col+2]), bottomRow + max(board[row][col], board[row][col+1], board[row][col+2]), board[row][col...col+1].reduce(0, +) + board[row+1][col+1...col+2].reduce(0, +), board[row][col+1...col+2].reduce(0, +) + board[row+1][col...col+1].reduce(0, +))
                    }
                }

                if row < NM[0] - 2 && col < NM[1] - 1 {
                    let leftCol = board[row][col] + board[row+1][col] + board[row+2][col]
                    let rightCol = board[row][col+1] + board[row+1][col+1] + board[row+2][col+1]
                    let midRow = board[row+1][col...col+1].reduce(0, +)
                    maxSum = max(maxSum, leftCol + max(board[row][col+1], board[row+1][col+1], board[row+2][col+1]), rightCol + max(board[row][col], board[row+1][col], board[row+2][col]), midRow + max(board[row][col] + board[row+2][col+1], board[row][col+1] + board[row+2][col]))
                }

                if row < NM[0] - 3 {
                    maxSum = max(maxSum, board[row][col] + board[row+1][col] + board[row+2][col] + board[row+3][col])
                }
            }
        }

        print(maxSum)
    }
}
