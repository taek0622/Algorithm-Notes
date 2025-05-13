//
//  1926.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 12/23/23.
//

//  문제 링크: https://www.acmicpc.net/problem/1926
//  알고리즘 분류: 그래프 이론, 그래프 탐색, 너비 우선 탐색, 깊이 우선 탐색

import Shared

public struct BOJ1926: Solvable {
    public init() {}

    public func run() {
        // 메모리: 75720KB, 시간: 64ms, 코드 길이: 955B
        let nm = readLine()!.split(separator: " ").map { Int($0)! }
        var paper = Array(repeating: Array(repeating: false, count: nm[1]), count: nm[0])
        var (count, maxWidth) = (0, 0)

        for idx in 0..<nm[0] {
            paper[idx] = readLine()!.split(separator: " ").map { $0 == "1" ? true : false }
        }

        for row in 0..<nm[0] {
            for col in 0..<nm[1] where paper[row][col] {
                var queue = [(row, col)]
                var idx = 0
                var width = 1
                paper[row][col] = false

                while idx < queue.count {
                    let (x, y) = queue[idx]
                    idx += 1

                    [(x-1, y), (x, y-1), (x, y+1), (x+1, y)].forEach {
                        if 0..<nm[0] ~= $0.0 && 0..<nm[1] ~= $0.1 && paper[$0.0][$0.1] {
                            width += 1
                            paper[$0.0][$0.1] = false
                            queue.append($0)
                        }
                    }
                }

                count += 1
                maxWidth = max(maxWidth, width)
            }
        }

        print("\(count)\n\(maxWidth)")
    }
}
