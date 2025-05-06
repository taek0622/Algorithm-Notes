//
//  3041.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 11/10/24.
//

//  문제 링크: https://www.acmicpc.net/problem/3041
//  알고리즘 분류: 구현

import Shared

public struct BOJ3041: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69096KB, 시간: 8ms, 코드 길이: 352B
        var result = 0

        for row in 0..<4 {
            let puzzle = Array(readLine()!)

            for col in puzzle.indices where puzzle[col] != "." {
                let num = Int(puzzle[col].asciiValue!) - 65
                let (pr, pc) = (num / 4, num % 4)

                result += row - pr > 0 ? row - pr : pr - row
                result += col - pc > 0 ? col - pc : pc - col
            }
        }

        print(result)
    }
}
