//
//  9518.swift
//  BOJ09000To09999
//
//  Created by 김민택 on 11/19/25.
//

//  문제 링크: https://www.acmicpc.net/problem/9518
//  알고리즘 분류: 구현, 브루트포스 알고리즘

import Shared

public struct BOJ9518: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69112KB, 시간: 8ms, 코드 길이: 2080B
        let RS = readLine()!.split(separator: " ").map { Int($0)! }
        var seat = Array(repeating: Array(repeating: false, count: RS[1]), count: RS[0])
        var seatCount = RS[0] * RS[1]
        var shake = 0
        var empty = Array(repeating: Array(repeating: 0, count: RS[1]), count: RS[0])

        for row in 0..<RS[0] {
            seat[row] = readLine()!.map { $0 == "o" }

            for col in 0..<RS[1] where seat[row][col] {
                seatCount -= 1
            }
        }

        for row in 0..<RS[0] {
            for col in 0..<RS[1] {
                if seat[row][col] {
                    if 0..<RS[0] ~= row + 1 {
                        if 0..<RS[1] ~= col + 1 && seat[row+1][col+1] {
                            shake += 1
                        }

                        if seat[row+1][col] {
                            shake += 1
                        }

                        if 0..<RS[1] ~= col - 1 && seat[row+1][col-1] {
                            shake += 1
                        }
                    }

                    if 0..<RS[1] ~= col + 1 && seat[row][col+1] {
                        shake += 1
                    }
                } else {
                    if 0..<RS[0] ~= row - 1 {
                        if 0..<RS[1] ~= col - 1 && seat[row-1][col-1] {
                            empty[row][col] += 1
                        }

                        if seat[row-1][col] {
                            empty[row][col] += 1
                        }

                        if 0..<RS[1] ~= col + 1 && seat[row-1][col+1] {
                            empty[row][col] += 1
                        }
                    }

                    if 0..<RS[1] ~= col - 1 && seat[row][col-1] {
                        empty[row][col] += 1
                    }

                    if 0..<RS[1] ~= col + 1 && seat[row][col+1] {
                        empty[row][col] += 1
                    }

                    if 0..<RS[0] ~= row + 1 {
                        if 0..<RS[1] ~= col - 1 && seat[row+1][col-1] {
                            empty[row][col] += 1
                        }

                        if seat[row+1][col] {
                            empty[row][col] += 1
                        }

                        if 0..<RS[1] ~= col + 1 && seat[row+1][col+1] {
                            empty[row][col] += 1
                        }
                    }
                }
            }
        }

        print(seatCount == 0 ? shake : shake + empty.map { $0.max()! }.max()!)
    }
}
