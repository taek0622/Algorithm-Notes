//
//  10026.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 10/15/23.
//

//  문제 링크: https://www.acmicpc.net/problem/10026
//  알고리즘 분류: 그래프 이론, 그래프 탐색, 너비 우선 탐색, 깊이 우선 탐색

import Shared

public struct BOJ10026: Solvable {
    public init() {}

    public func run() {
        solution2()
    }

    // 메모리: 69772KB, 시간: 16ms, 코드 길이: 1522B
    private func solution1() {
        let N = Int(readLine()!)!
        var map = [[String]]()
        var (nonBlind, blind) = (0, 0)

        for _ in 0..<N {
            map.append(readLine()!.map { String($0) })
        }

        var blindMap = map

        for row in 0..<N {
            for col in 0..<N {
                if map[row][col] != "" {
                    nonBlind += 1
                    var queue = [(row, col)]
                    var idx = 0

                    while idx < queue.count {
                        let (x, y) = queue[idx]
                        idx += 1

                        [(x-1, y), (x, y-1), (x, y+1), (x+1, y)].forEach {
                            if 0..<N ~= $0.0 && 0..<N ~= $0.1 && map[$0.0][$0.1] != "" && map[x][y] == map[$0.0][$0.1] {
                                queue.append($0)
                            }
                        }

                        map[x][y] = ""
                    }
                }

                if blindMap[row][col] != "" {
                    blind += 1
                    var queue = [(row, col)]
                    var idx = 0

                    while idx < queue.count {
                        let (x, y) = queue[idx]
                        idx += 1

                        [(x-1, y), (x, y-1), (x, y+1), (x+1, y)].forEach {
                            if 0..<N ~= $0.0 && 0..<N ~= $0.1 && blindMap[$0.0][$0.1] != "" {
                                if blindMap[x][y] == blindMap[$0.0][$0.1] || ((blindMap[x][y] == "R" || blindMap[x][y] == "G") && (blindMap[$0.0][$0.1] == "R" || blindMap[$0.0][$0.1] == "G")) {
                                    queue.append($0)
                                }
                            }
                        }

                        blindMap[x][y] = ""
                    }
                }
            }
        }

        print(nonBlind, blind)
    }

    // 메모리: 69368KB, 시간: 12ms, 코드 길이: 982B
    private func solution2() {
        let N = Int(readLine()!)!
        var nonBlindMap = [[String]]()
        var blindMap = [[String]]()
        var (nonBlind, blind) = (0, 0)

        for _ in 0..<N {
            let input = readLine()!.map { String($0) }
            nonBlindMap.append(input)
            blindMap.append(input.map { $0 == "G" ? "R" : $0 })
        }

        for row in 0..<N {
            for col in 0..<N {
                if nonBlindMap[row][col] != "" {
                    nonBlind += 1
                    bfs(&nonBlindMap, row, col)
                }

                if blindMap[row][col] != "" {
                    blind += 1
                    bfs(&blindMap, row, col)
                }
            }
        }

        print(nonBlind, blind)

        func bfs(_ map: inout [[String]], _ row: Int, _ col: Int) {
            var queue = [(row, col)]

            while !queue.isEmpty {
                let (x, y) = queue.removeFirst()

                [(x-1, y), (x, y-1), (x, y+1), (x+1, y)].forEach {
                    if 0..<N ~= $0.0 && 0..<N ~= $0.1 && map[$0.0][$0.1] != "" && map[x][y] == map[$0.0][$0.1] {
                        queue.append($0)
                    }
                }

                map[x][y] = ""
            }
        }
    }
}
