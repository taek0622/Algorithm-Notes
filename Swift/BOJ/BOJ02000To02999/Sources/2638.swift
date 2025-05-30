//
//  2638.swift
//  BOJ02000To02999
//
//  Created by 김민택 on 5/30/25.
//

//  문제 링크: https://www.acmicpc.net/problem/2638
//  알고리즘 분류: 구현, 그래프 이론, 그래프 탐색, 시뮬레이션, 너비 우선 탐색, 깊이 우선 탐색, 격자 그래프

import Shared

public struct BOJ2638: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69716KB, 시간: 108ms, 코드 길이: 1982B
        let NM = readLine()!.split(separator: " ").map { Int($0)! }
        var paper = Array(repeating: Array(repeating: 0, count: NM[1]), count: NM[0])
        var time = 0

        for row in 0..<NM[0] {
            paper[row] = readLine()!.split(separator: " ").map { Int($0)! }
        }

        while true {
            var count = 0

            for row in [0, NM[0]-1] {
                for col in [0, NM[1]-1] where paper[row][col] == 0 {
                    var queue = [(row, col)]
                    var idx = 0
                    paper[row][col] = -1
                    count += 1

                    while idx < queue.count {
                        let (r, c) = queue[idx]
                        idx += 1

                        for (nr, nc) in [(r-1, c), (r, c-1), (r, c+1), (r+1, c)] where 0..<NM[0] ~= nr && 0..<NM[1] ~= nc && paper[nr][nc] == 0 {
                            paper[nr][nc] = -1
                            count += 1
                            queue.append((nr, nc))
                        }
                    }
                }
            }

            if count == NM[0] * NM[1] {
                break
            }

            time += 1

            for row in 0..<NM[0] {
                for col in 0..<NM[1] where paper[row][col] == 1 {
                    var queue = [(row, col)]
                    var idx = 0

                    while idx < queue.count {
                        let (r, c) = queue[idx]
                        idx += 1
                        var count = 0

                        for (nr, nc) in [(r-1, c), (r, c-1), (r, c+1), (r+1, c)] where 0..<NM[0] ~= nr && 0..<NM[1] ~= nc {
                            if paper[nr][nc] == -1 {
                                count += 1
                            } else if paper[nr][nc] == 1 {
                                paper[nr][nc] = 2
                                queue.append((nr, nc))
                            }
                        }

                        paper[r][c] = count >= 2 ? 0 : 2
                    }
                }
            }

            for row in 0..<NM[0] {
                for col in 0..<NM[1] {
                    if paper[row][col] == -1 {
                        paper[row][col] = 0
                    } else if paper[row][col] == 2 {
                        paper[row][col] = 1
                        count += 1
                    }
                }
            }
        }

        print(time)
    }
}
