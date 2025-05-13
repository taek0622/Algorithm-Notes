//
//  1051.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 5/27/24.
//

//  문제 링크: https://www.acmicpc.net/problem/1051
//  알고리즘 분류: 구현, 브루트포스 알고리즘

import Shared

public struct BOJ1051: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69108KB, 시간: 8ms, 코드 길이: 703B
        let NM = readLine()!.split(separator: " ").map { Int($0)! }
        var square = Array(repeating: Array(repeating: 0, count: NM[1]), count: NM[0])
        var isFinished = false

        for row in 0..<NM[0] {
            square[row] = readLine()!.map { Int(String($0))! }
        }

        var side = NM.min()!

        while 0 < side {
            for row in 0...(NM[0] - side) where !isFinished {
                for col in 0...(NM[1] - side) where !isFinished {
                    if square[row][col] == square[row][col+side-1] && square[row][col] == square[row+side-1][col] && square[row][col] == square[row+side-1][col+side-1] {
                        isFinished = true
                    }
                }
            }

            if isFinished {
                print(side*side)
                break
            }

            side -= 1
        }
    }
}
