//
//  16928.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 3/19/24.
//

//  문제 링크: https://www.acmicpc.net/problem/16928
//  알고리즘 분류: 그래프 이론, 그래프 탐색, 너비 우선 탐색

import Shared

public struct BOJ16928: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69108KB, 시간: 8ms, 코드 길이: 723B
        let NM = readLine()!.split(separator: " ").map { Int($0)! }.reduce(0, +)
        var board = Array(0...100)
        var visited = Array(repeating: false, count: 101)

        for _ in 0..<NM {
            let xy = readLine()!.split(separator: " ").map { Int($0)! }
            board[xy[0]] = xy[1]
        }

        visited[1] = true
        var queue = [(1, 0)]
        var idx = 0

        while idx < queue.count {
            let (now, count) = queue[idx]
            idx += 1

            if now == 100 {
                print(count)
                break
            }

            for idx in 1...6 where 1...100 ~= now+idx {
                var next = now+idx

                while board[next] != next {
                    next = board[next]
                }

                if !visited[next] {
                    queue.append((next, count+1))
                    visited[next] = true
                }
            }
        }
    }
}
