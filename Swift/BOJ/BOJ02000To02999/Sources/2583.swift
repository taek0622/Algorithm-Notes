//
//  2583.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 11/9/23.
//

//  문제 링크: https://www.acmicpc.net/problem/2583
//  알고리즘 분류: 그래프 이론, 그래프 탐색, 너비 우선 탐색, 깊이 우선 탐색

import Shared

public struct BOJ2583: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69508KBm, 시간: 8ms, 코드 길이: 1083B
        let MNK = readLine()!.split(separator: " ").map { Int(String($0))! }
        var paper = Array(repeating: Array(repeating: true, count: MNK[0]), count: MNK[1])
        var area = [Int]()

        for _ in 0..<MNK[2] {
            let xy = readLine()!.split(separator: " ").map { Int(String($0))! }

            for row in xy[0]..<xy[2] {
                for col in xy[1]..<xy[3] {
                    paper[row][col] = false
                }
            }
        }

        for row in 0..<MNK[1] {
            for col in 0..<MNK[0] where paper[row][col] {
                paper[row][col] = false
                var queue = [(row, col)]
                var idx = 0
                var count = 1

                while idx < queue.count {
                    let (x, y) = queue[idx]
                    idx += 1

                    [(x-1, y), (x, y-1), (x, y+1), (x+1, y)].forEach {
                        if 0..<MNK[1] ~= $0.0 && 0..<MNK[0] ~= $0.1 && paper[$0.0][$0.1] {
                            queue.append($0)
                            paper[$0.0][$0.1] = false
                            count += 1
                        }
                    }
                }

                area.append(count)
            }
        }

        print("\(area.count)\n\(area.sorted().map { String($0) }.joined(separator: " "))")
    }
}
