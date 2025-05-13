//
//  1388.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/08/31.
//

//  문제 링크: https://www.acmicpc.net/problem/1388
//  알고리즘 분류: 구현, 그래프 이론, 그래프 탐색, 깊이 우선 탐색

import Shared

public struct BOJ1388: Solvable {
    public init() {}

    public func run() {
        // DFS 미활용 풀이
        // 메모리: 69108KB, 시간: 8ms, 코드 길이: 754B
        let NM = readLine()!.split(separator: " ").map { Int(String($0))! }
        var tiles = Array(repeating: Array(repeating: "", count: NM[1]), count: NM[0])
        var count = 0

        for row in 0..<NM[0] {
            tiles[row] = readLine()!.map { String($0) }
        }

        for row in 0..<NM[0] {
            for col in 0..<NM[1] {
                if row == 0 && col == 0 {
                    count += 1
                } else if row == 0 && tiles[row][col] == "|" {
                    count += 1
                } else if col == 0 && tiles[row][col] == "-" {
                    count += 1
                } else if tiles[row][col] == "|" && tiles[row-1][col] == "|" {
                    continue
                } else if tiles[row][col] == "-" && tiles[row][col-1] == "-" {
                    continue
                } else {
                    count += 1
                }
            }
        }

        print(count)
    }
}
