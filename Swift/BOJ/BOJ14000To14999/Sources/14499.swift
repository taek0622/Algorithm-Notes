//
//  14499.swift
//  BOJ14000To14999
//
//  Created by 김민택 on 10/13/25.
//

//  문제 링크: https://www.acmicpc.net/problem/14499
//  알고리즘 분류: 구현, 시뮬레이션

import Shared

public struct BOJ14499: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69108KB, 시간: 8ms, 코드 길이: 1042B
        let NMxyK = readLine()!.split(separator: " ").map { Int($0)! }
        var map = Array(repeating: Array(repeating: 0, count: NMxyK[1]), count: NMxyK[0])
        var dice = Array(repeating: 0, count: 6)
        var (r, c) = (NMxyK[2], NMxyK[3])

        for idx in 0..<NMxyK[0] {
            map[idx] = readLine()!.split(separator: " ").map { Int($0)! }
        }

        let moves = readLine()!.split(separator: " ").map { Int($0)! }

        for move in moves {
            if move == 1 && NMxyK[1] > c+1 {
                c += 1
                rollTheDice(3, 2)
            } else if move == 2 && 0 < c {
                c -= 1
                rollTheDice(2, 3)
            } else if move == 3 && 0 < r {
                r -= 1
                rollTheDice(4, 1)
            } else if move == 4 && NMxyK[0] > r+1 {
                r += 1
                rollTheDice(1, 4)
            }
        }

        func rollTheDice(_ toTop: Int, _ toBtm: Int) {
            let temp = dice[0]
            dice[0] = dice[toTop]
            dice[toTop] = dice[5]

            if map[r][c] == 0 {
                dice[5] = dice[toBtm]
                map[r][c] = dice[5]
            } else {
                dice[5] = map[r][c]
                map[r][c] = 0
            }

            dice[toBtm] = temp
            print(dice[0])
        }
    }
}
