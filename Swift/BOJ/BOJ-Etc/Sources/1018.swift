//
//  1018.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/01/07.
//

// 문제: https://www.acmicpc.net/problem/1018

import Shared

public struct BOJ1018: Solvable {
    public init() {}

    public func run() {
        solution2()
    }

    // 메모리: 69108KB, 시간: 12ms, 코드 길이: 930B
    private func solution1() {
        let size = readLine()!.split(separator: " ").map { Int(String($0))! }
        let pattern = [[0, 1, 0, 1, 0, 1, 0, 1],
                       [1, 0, 1, 0, 1, 0, 1, 0],
                       [0, 1, 0, 1, 0, 1, 0, 1],
                       [1, 0, 1, 0, 1, 0, 1, 0],
                       [0, 1, 0, 1, 0, 1, 0, 1],
                       [1, 0, 1, 0, 1, 0, 1, 0],
                       [0, 1, 0, 1, 0, 1, 0, 1],
                       [1, 0, 1, 0, 1, 0, 1, 0]]
        var board = [[Character]]()

        for _ in 0..<size[0] {
            board.append(readLine()!.map { $0 })
        }

        var counter = [Int]()

        for rowArea in 0...size[0]-8 {
            for columnArea in 0...size[1]-8 {
                var count = 0

                for row in 0..<8 {
                    for column in 0..<8 {
                        if (board[row+rowArea][column+columnArea] == "W" ? 0 : 1) != pattern[row][column] {
                            count += 1
                        }
                    }
                }

                counter.append(count > 32 ? 64 - count : count)
            }
        }

        print(counter.min()!)
    }

    // 메모리: 69108KB, 시간: 12ms, 코드 길이: 585B
    private func solution2() {
        let size = readLine()!.split(separator: " ").map { Int(String($0))! }
        var board = [[String]]()

        for _ in 0..<size[0] {
            board.append(readLine()!.map { String($0) })
        }

        var counter = [Int]()

        for rowArea in 0...size[0]-8 {
            for columnArea in 0...size[1]-8 {
                var count = 0

                for row in rowArea..<rowArea+8 {
                    for column in columnArea..<columnArea+8 where board[row][column] != ((row + column) % 2 == 0 ? "W" : "B") {
                        count += 1
                    }
                }

                counter.append(count > 32 ? 64 - count : count)
            }
        }

        print(counter.min()!)
    }
}
