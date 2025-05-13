//
//  9626.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2/2/25.
//

//  문제 링크: https://www.acmicpc.net/problem/9626
//  알고리즘 분류: 구현

import Shared

public struct BOJ9626: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69108KB, 시간: 8ms, 코드 길이: 604B
        let MN = readLine()!.split(separator: " ").map { Int($0)! }
        let ULRD = readLine()!.split(separator: " ").map { Int($0)! }
        var puzzle = Array(repeating: Array(repeating: "", count: MN[1] + ULRD[1] + ULRD[2]), count: MN[0] + ULRD[0] + ULRD[3])

        for row in 0..<MN[0]+ULRD[0]+ULRD[3] {
            for col in 0..<MN[1] + ULRD[1] + ULRD[2] {
                puzzle[row][col] = (row + col) % 2 == 0 ? "#" : "."
            }
        }

        for row in ULRD[0]..<ULRD[0]+MN[0] {
            let word = readLine()!.map { String($0) }

            for col in 0..<MN[1] {
                puzzle[row][col+ULRD[1]] = word[col]
            }
        }

        puzzle.forEach {
            print($0.joined())
        }
    }
}
