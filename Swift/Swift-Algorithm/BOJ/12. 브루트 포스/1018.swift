//
//  1018.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/01/07.
//

// 문제: https://www.acmicpc.net/problem/1018

class BOJ1018: Solvable {
    func run() {
        // 메모리: 69268KB, 시간: 12ms, 코드 길이: 1286B
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

        let startWhite = board.map { $0.map { $0 == "W" ? 0 : 1 } }
        let startBlack = board.map { $0.map { $0 == "B" ? 0 : 1 } }

        var counter = [Int]()

        for rowArea in 0...size[0]-8 {
            for columnArea in 0...size[1]-8 {
                var count = 0

                for row in 0..<8 {
                    for column in 0..<8 {
                        if startWhite[row+rowArea][column+columnArea] != pattern[row][column] {
                            count += 1
                        }
                    }
                }

                counter.append(count)

                count = 0

                for row in 0..<8 {
                    for column in 0..<8 {
                        if startBlack[row+rowArea][column+columnArea] != pattern[row][column] {
                            count += 1
                        }
                    }
                }

                counter.append(count)
            }
        }

        print(counter.min()!)
    }
}
