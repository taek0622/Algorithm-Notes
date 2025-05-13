//
//  2167.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 5/25/24.
//

//  문제 링크: https://www.acmicpc.net/problem/2167
//  알고리즘 분류: 구현, 누적 합

import Shared

public struct BOJ2167: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69860KB, 시간: 64ms, 코드 길이: 1213B
        let NM = readLine()!.split(separator: " ").map { Int($0)! }
        var array = Array(repeating: Array(repeating: 0, count: NM[1]), count: NM[0])

        for row in 0..<NM[0] {
            array[row] = readLine()!.split(separator: " ").map { Int($0)! }
        }

        for row in 0..<NM[0] {
            for col in 0..<NM[1] {
                if row == 0 && col == 0 {
                    continue
                } else if row == 0 {
                    array[row][col] = array[row][col-1] + array[row][col]
                } else if col == 0 {
                    array[row][col] = array[row-1][col] + array[row][col]
                } else {
                    array[row][col] = array[row-1][col] + array[row][col-1] + array[row][col] - array[row-1][col-1]
                }
            }
        }

        let K = Int(readLine()!)!

        for _ in 0..<K {
            let ijxy = readLine()!.split(separator: " ").map { Int($0)! - 1 }

            if ijxy[0] == 0 && ijxy[1] == 0 {
                print(array[ijxy[2]][ijxy[3]])
            } else if ijxy[0] == 0 {
                print(array[ijxy[2]][ijxy[3]] - array[ijxy[2]][ijxy[1] - 1])
            } else if ijxy[1] == 0 {
                print(array[ijxy[2]][ijxy[3]] - array[ijxy[0] - 1][ijxy[3]])
            } else {
                print(array[ijxy[2]][ijxy[3]] - array[ijxy[2]][ijxy[1] - 1] - array[ijxy[0] - 1][ijxy[3]] + array[ijxy[0] - 1][ijxy[1] - 1])
            }
        }
    }
}
