//
//  1074.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 10/30/23.
//

//  문제 링크: https://www.acmicpc.net/problem/1074
//  알고리즘 분류: 분할 정복, 재귀

import Shared

public struct BOJ1074: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69104KB, 시간: 8ms, 코드 길이: 678B
        let Nrc = readLine()!.split(separator: " ").map { Int(String($0))! }
        var count = -1
        let size = 1<<Nrc[0]

        visitPath(size, 0, 0)

        func visitPath(_ N: Int, _ row: Int, _ col: Int) {
            if N == 1 {
                print(count + 1)
                return
            }

            let next = N/2
            let block = N*N/4

            if row..<row+next ~= Nrc[1] && col..<col+next ~= Nrc[2] {
                visitPath(next, row, col)
            } else if row..<row+next ~= Nrc[1] {
                count += block
                visitPath(next, row, col+next)
            } else if col..<col+next ~= Nrc[2] {
                count += block*2
                visitPath(next, row+next, col)
            } else {
                count += block*3
                visitPath(next, row+next, col+next)
            }
        }
    }
}
