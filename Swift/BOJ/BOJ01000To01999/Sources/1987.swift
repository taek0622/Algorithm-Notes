//
//  1987.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 10/31/23.
//

//  문제 링크: https://www.acmicpc.net/problem/1987
//  알고리즘 분류: 그래프 이론, 그래프 탐색, 깊이 우선 탐색, 백트래킹

import Shared

public struct BOJ1987: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69108KB, 시간: 1976ms, 코드 길이: 634B
        let RC = readLine()!.split(separator: " ").map { Int(String($0))! }
        var board = [[Int]]()
        var count = 0

        for _ in 0..<RC[0] {
            board.append(readLine()!.map { Int($0.asciiValue!) - 65 })
        }

        dfs((0, 0), 1, 1 << board[0][0])

        print(count)

        func dfs(_ current: (Int, Int), _ depth: Int, _ visited: Int) {
            count = max(count, depth)

            let (x, y) = current

            [(x-1, y), (x, y-1), (x, y+1), (x+1, y)].forEach {
                if 0..<RC[0] ~= $0.0 && 0..<RC[1] ~= $0.1 {
                    let next = 1 << board[$0.0][$0.1]

                    if next & visited == 0 {
                        dfs($0, depth + 1, next | visited)
                    }
                }
            }
        }
    }
}

