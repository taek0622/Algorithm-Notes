//
//  1743.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 12/31/23.
//

//  문제 링크: https://www.acmicpc.net/problem/1743
//  알고리즘 분류: 그래프 이론, 그래프 탐색, 너비 우선 탐색, 깊이 우선 탐색

import Shared

public struct BOJ1743: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69260KB, 시간: 16ms, 코드 길이: 933B
        let NMK = readLine()!.split(separator: " ").map { Int($0)! }
        var trash = Array(repeating: Array(repeating: false, count: NMK[1]), count: NMK[0])
        var biggestTrash = 0

        for _ in 0..<NMK[2] {
            let input = readLine()!.split(separator: " ").map { Int($0)! - 1 }
            trash[input[0]][input[1]] = true
        }

        for row in 0..<NMK[0] {
            for col in 0..<NMK[1] where trash[row][col] {
                var queue = [(row, col)]
                var idx = 0
                var trashSize = 0

                while idx < queue.count {
                    let (x, y) = queue[idx]
                    idx += 1

                    [(x-1, y), (x, y-1), (x, y+1), (x+1, y)].forEach {
                        if 0..<NMK[0] ~= $0.0 && 0..<NMK[1] ~= $0.1 && trash[$0.0][$0.1] {
                            trashSize += 1
                            trash[$0.0][$0.1] = false
                            queue.append($0)
                        }
                    }
                }

                biggestTrash = max(biggestTrash, trashSize)
            }
        }

        print(biggestTrash)
    }
}
