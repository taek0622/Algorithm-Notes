//
//  2206.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 12/1/23.
//

//  문제 링크: https://www.acmicpc.net/problem/2206
//  알고리즘 분류: 그래프 이론, 그래프 탐색, 너비 우선 탐색

import Shared

public struct BOJ2206: Solvable {
    public init() {}

    public func run() {
        // 메모리: 217608KB, 시간: 700ms, 코드 길이: 1080B
        let NM = readLine()!.split(separator: " ").map { Int($0)! }
        var map = Array(repeating: Array(repeating: 0, count: NM[1]), count: NM[0])
        var move = Int.max

        for idx in 0..<NM[0] {
            map[idx] = readLine()!.map { Int(String($0))! }
        }

        var queue = [(0, 0, 0)]
        var idx = 0
        var visited = Array(repeating: Array(repeating: Array(repeating: 0, count: 2), count: NM[1]), count: NM[0])
        visited[0][0][0] = 1

        while idx < queue.count {
            let (x, y, wall) = queue[idx]
            idx += 1

            if x == NM[0] - 1 && y == NM[1] - 1 {
                move = visited[x][y][wall]
                break
            }

            [(x-1, y), (x, y-1), (x, y+1), (x+1, y)].forEach {
                if 0..<NM[0] ~= $0.0 && 0..<NM[1] ~= $0.1 && visited[$0.0][$0.1][wall] == 0 {
                    if map[$0.0][$0.1] == 0 {
                        visited[$0.0][$0.1][wall] = visited[x][y][wall] + 1
                        queue.append(($0.0, $0.1, wall))
                    } else if wall == 0 {
                        visited[$0.0][$0.1][1] = visited[x][y][wall] + 1
                        queue.append(($0.0, $0.1, 1))
                    }
                }
            }
        }

        print(move == Int.max ? -1 : move)
    }
}
