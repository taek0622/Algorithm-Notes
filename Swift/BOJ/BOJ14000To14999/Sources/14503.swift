//
//  14503.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 11/18/23.
//

//  문제 링크: https://www.acmicpc.net/problem/14503
//  알고리즘 분류: 구현, 시뮬레이션

import Shared

public struct BOJ14503: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69108KB, 시간: 8ms, 코드 길이: 1003B
        let NM = readLine()!.split(separator: " ").map { Int($0)! }
        let rcd = readLine()!.split(separator: " ").map { Int($0)! }
        let offset: [(x: Int, y: Int)] = [(-1, 0), (0, 1), (1, 0), (0, -1)]
        var (r, c, d) = (rcd[0], rcd[1], rcd[2])
        var map = [[Int]]()
        var count = 1

        for _ in 0..<NM[0] {
            map.append(readLine()!.split(separator: " ").map { Int($0)! })
        }

        map[r][c] = 2

        while true {
            if !checkTile(r, c) {
                let next = offset[(d + 2) % 4]

                if map[r+next.x][c+next.y] == 1 {
                    break
                }

                r += next.x
                c += next.y

                continue
            }

            while true {
                d = (d + 3) % 4
                let next = offset[d]

                if map[r+next.x][c+next.y] == 0 {
                    r +=  next.x
                    c += next.y
                    map[r][c] = 2
                    count += 1
                    break
                }
            }
        }

        print(count)

        func checkTile(_ row: Int, _ col: Int) -> Bool {
            for dir in offset where map[row+dir.x][col+dir.y] == 0 {
                return true
            }

            return false
        }
    }
}
