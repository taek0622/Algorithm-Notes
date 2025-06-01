//
//  17822.swift
//  BOJ17000To17999
//
//  Created by 김민택 on 6/1/25.
//

//  문제 링크: https://www.acmicpc.net/problem/17822
//  알고리즘 분류: 구현, 시뮬레이션

import Shared

public struct BOJ17822: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69116KB, 시간: 12ms, 코드 길이: 3471B
        let NMT = readLine()!.split(separator: " ").map { Int($0)! }
        var boards = Array(repeating: Array(repeating: 0, count: NMT[1]), count: NMT[0])

        for idx in 0..<NMT[0] {
            boards[idx] = readLine()!.split(separator: " ").map { Int($0)! }
        }

        for _ in 0..<NMT[2] {
            let xdk = readLine()!.split(separator: " ").map { Int($0)! }

            for idx in 1...NMT[0] where idx % xdk[0] == 0 {
                boards[idx-1] = Array(xdk[1] == 0 ? boards[idx-1][(NMT[1]-xdk[2])...] + boards[idx-1][..<(NMT[1]-xdk[2])] : boards[idx-1][xdk[2]...] + boards[idx-1][..<xdk[2]])
            }

            var temp = boards
            var count = 0
            var numberCount = 0
            var sum = 0

            for row in 0..<NMT[0] {
                for col in 0..<NMT[1] where boards[row][col] != 0 {
                    sum += boards[row][col]
                    numberCount += 1

                    if row == 0 {
                        if boards[row][col] == boards[row+1][col] {
                            temp[row][col] = 0
                            temp[row+1][col] = 0
                            count += 1
                        }
                    } else if row == NMT[0]-1 {
                        if boards[row][col] == boards[row-1][col] {
                            temp[row][col] = 0
                            temp[row-1][col] = 0
                            count += 1
                        }
                    } else if 1..<NMT[0]-1 ~= row {
                        if boards[row][col] == boards[row+1][col] {
                            temp[row][col] = 0
                            temp[row+1][col] = 0
                            count += 1
                        }

                        if boards[row][col] == boards[row-1][col] {
                            temp[row][col] = 0
                            temp[row-1][col] = 0
                            count += 1
                        }
                    }

                    if col == 0 {
                        if boards[row][col] == boards[row][col+1] {
                            temp[row][col] = 0
                            temp[row][col+1] = 0
                            count += 1
                        }

                        if boards[row][col] == boards[row][NMT[1]-1] {
                            temp[row][col] = 0
                            temp[row][NMT[1]-1] = 0
                            count += 1
                        }
                    } else if col == NMT[1]-1 {
                        if boards[row][col] == boards[row][0] {
                            temp[row][col] = 0
                            temp[row][0] = 0
                            count += 1
                        }

                        if boards[row][col] == boards[row][col-1] {
                            temp[row][col] = 0
                            temp[row][col-1] = 0
                            count += 1
                        }
                    } else if 1..<NMT[1]-1 ~= col {
                        if boards[row][col] == boards[row][col+1] {
                            temp[row][col] = 0
                            temp[row][col+1] = 0
                            count += 1
                        }

                        if boards[row][col] == boards[row][col-1] {
                            temp[row][col] = 0
                            temp[row][col-1] = 0
                            count += 1
                        }
                    }
                }
            }

            if count == 0 {
                for row in 0..<NMT[0] {
                    for col in 0..<NMT[1] where boards[row][col] != 0 {
                        if Double(boards[row][col]) > Double(sum) / Double(numberCount) {
                            temp[row][col] -= 1
                        } else if Double(boards[row][col]) < Double(sum) / Double(numberCount) {
                            temp[row][col] += 1
                        }
                    }
                }
            }

            boards = temp
        }

        var sum = 0

        for idx in 0..<NMT[0] {
            sum += boards[idx].reduce(0, +)
        }

        print(sum)
    }
}
