//
//  5212.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 12/8/24.
//

//  문제 링크: https://www.acmicpc.net/problem/5212
//  알고리즘 분류: 구현, 시뮬레이션

import Shared

public struct BOJ5212: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69108KB, 시간: 8ms, 코드 길이: 964B
        let RC = readLine()!.split(separator: " ").map { Int($0)! }
        var map = Array(repeating: Array(repeating: ".", count: RC[1] + 2), count: RC[0] + 2)

        for row in 1...RC[0] {
            map[row] = ["."] + readLine()!.map { String($0) } + ["."]
        }

        var newMap = map

        for row in 1...RC[0] {
            for col in 1...RC[1] where map[row][col] == "X" {
                var count = 0

                for (nr, nc) in [(row-1, col), (row, col-1), (row, col+1), (row+1, col)] where 0...RC[0]+1 ~= nr && 0...RC[1]+1 ~= nc && map[nr][nc] == "." {
                    count += 1
                }

                if count >= 3 {
                    newMap[row][col] = "."
                }
            }
        }

        var (startR, startC, endR, endC) = (RC[0], RC[1], 0, 0)

        for row in 1...RC[0] {
            for col in 1...RC[1] where newMap[row][col] == "X" {
                startR = min(startR, row)
                endR = max(endR, row)
                startC = min(startC, col)
                endC = max(endC, col)
            }
        }

        for row in startR...endR {
            print(newMap[row][startC...endC].joined())
        }
    }
}
