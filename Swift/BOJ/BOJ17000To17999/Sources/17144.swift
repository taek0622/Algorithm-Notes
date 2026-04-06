//
//  17144.swift
//  BOJ17000To17999
//
//  Created by 김이안 on 4/6/26.
//

//  문제 링크: https://www.acmicpc.net/problem/17144
//  알고리즘 분류: 구현, 시뮬레이션

import Shared

public struct BOJ17144: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69112KB, 시간: 196ms, 코드 길이: 1935B
        let RCT = readLine()!.split(separator: " ").map { Int($0)! }
        var A = Array(repeating: Array(repeating: 0, count: RCT[1]), count: RCT[0])
        var airPurifier = [Int]()

        for row in 0..<RCT[0] {
            A[row] = readLine()!.split(separator: " ").map { Int($0)! }

            for now in A[row] where now == -1 {
                airPurifier.append(row)
            }
        }

        for _ in 0..<RCT[2] {
            var temp = Array(repeating: Array(repeating: 0, count: RCT[1]), count: RCT[0])

            for row in 0..<RCT[0] {
                for col in 0..<RCT[1] {
                    let now = A[row][col]
                    var spreadCount = 0

                    for (nr, nc) in [(row-1, col), (row, col-1), (row, col+1), (row+1, col)] where 0..<RCT[0] ~= nr && 0..<RCT[1] ~= nc && A[nr][nc] != -1 {
                        temp[nr][nc] += now / 5
                        spreadCount += 1
                    }

                    temp[row][col] += now - now / 5 * spreadCount
                }
            }

            for row in stride(from: airPurifier[0]-2, through: 0, by: -1) {
                temp[row+1][0] = temp[row][0]
                temp[row][0] = 0
            }

            for row in airPurifier[1]+2..<RCT[0] {
                temp[row-1][0] = temp[row][0]
                temp[row][0] = 0
            }

            for col in 1..<RCT[1] {
                temp[0][col-1] = temp[0][col]
                temp[0][col] = 0
                temp[RCT[0]-1][col-1] = temp[RCT[0]-1][col]
                temp[RCT[0]-1][col] = 0
            }

            for row in 1...airPurifier[0] {
                temp[row-1][RCT[1]-1] = temp[row][RCT[1]-1]
                temp[row][RCT[1]-1] = 0
            }

            for row in stride(from: RCT[0]-2, through: airPurifier[1], by: -1) {
                temp[row+1][RCT[1]-1] = temp[row][RCT[1]-1]
                temp[row][RCT[1]-1] = 0
            }

            for col in stride(from: RCT[1]-2, through: 1, by: -1) {
                temp[airPurifier[0]][col+1] = temp[airPurifier[0]][col]
                temp[airPurifier[0]][col] = 0
                temp[airPurifier[1]][col+1] = temp[airPurifier[1]][col]
                temp[airPurifier[1]][col] = 0
            }

            A = temp
        }

        print(A.map { $0.reduce(0, +) }.reduce(2, +))
    }
}
