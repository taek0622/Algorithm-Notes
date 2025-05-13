//
//  9663.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 11/17/23.
//

//  문제 링크: https://www.acmicpc.net/problem/9663
//  알고리즘 분류: 브루트포스 알고리즘, 백트래킹

import Shared

public struct BOJ9663: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69100KB, 시간: 6908ms, 코드 길이: 505B
        let N = Int(readLine()!)!
        var board = Array(repeating: 0, count: N)
        var count = 0

        putQueen(0)

        print(count)

        func putQueen(_ row: Int) {
            if row == N {
                count += 1
                return
            }

            for col in 0..<N {
                var isPuttable = true

                for prev in 0..<row where board[prev] == col || abs(row-prev) == abs(col-board[prev]) {
                    isPuttable = false
                    break
                }

                if isPuttable {
                    board[row] = col
                    putQueen(row+1)
                }
            }
        }
    }
}
