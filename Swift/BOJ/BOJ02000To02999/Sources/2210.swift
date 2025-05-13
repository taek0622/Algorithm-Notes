//
//  2210.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/09/17.
//

//  문제 링크: https://www.acmicpc.net/problem/2210
//  알고리즘 분류: 그래프 이론, 브루트포스 알고리즘, 그래프 탐색, 깊이 우선 탐색

import Shared

public struct BOJ2210: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69508KB, 시간: 12ms, 코드 길이: 706B
        var board = Array(repeating: Array(repeating: "", count: 5), count: 5)
        let dx = [-1, 1, 0, 0]
        let dy = [0, 0, -1, 1]
        var number = Set<String>()

        for idx in 0..<5 {
            board[idx] = readLine()!.split(separator: " ").map { String($0) }
        }

        for row in 0..<5 {
            for col in 0..<5 {
                dfs(row, col, "")
            }
        }

        print(number.count)

        func dfs(_ x: Int, _ y: Int, _ num: String) {
            var num = num
            num += board[x][y]

            if num.count == 6 {
                number.insert(num)
                return
            }

            for idx in 0..<4 {
                let nextX = x + dx[idx]
                let nextY = y + dy[idx]

                if !(0...4 ~= nextX) || !(0...4 ~= nextY) {
                    continue
                }

                dfs(nextX, nextY, num)
            }
        }
    }
}
