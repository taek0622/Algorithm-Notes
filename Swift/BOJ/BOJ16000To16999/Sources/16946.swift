//
//  16946.swift
//  BOJ16000To16999
//
//  Created by 김이안 on 3/29/26.
//

//  문제 링크: https://www.acmicpc.net/problem/16946
//  알고리즘 분류: 그래프 이론, 그래프 탐색, 너비 우선 탐색, 깊이 우선 탐색

import Shared

public struct BOJ16946: Solvable {
    public init() {}

    public func run() {
        // 메모리: 89668KB, 시간: 292ms, 코드 길이: 1434B
        let NM = readLine()!.split(separator: " ").map { Int($0)! }
        var map = Array(repeating: Array(repeating: -2, count: NM[1]), count: NM[0])
        var groupCount = [Int]()
        var countMap = ""

        for row in 0..<NM[0] {
            map[row] = readLine()!.map { $0 == "0" ? -1 : -2 }
        }

        var groupLabel = 0

        for row in 0..<NM[0] {
            for col in 0..<NM[1] where map[row][col] == -1 {
                var queue = [(row, col)]
                map[row][col] = groupLabel
                var count = 1
                var idx = 0

                while idx < queue.count {
                    let (cr, cc) = queue[idx]
                    idx += 1

                    for (nr, nc) in [(cr-1, cc), (cr, cc-1), (cr, cc+1), (cr+1, cc)] where 0..<NM[0] ~= nr && 0..<NM[1] ~= nc && map[nr][nc] == -1 {
                        queue.append((nr, nc))
                        map[nr][nc] = groupLabel
                        count += 1
                    }
                }

                groupCount.append(count)
                groupLabel += 1
            }
        }

        for row in 0..<NM[0] {
            for col in 0..<NM[1] {
                if map[row][col] != -2 {
                    countMap += "0"
                    continue
                }

                var visitedGroup = Set<Int>()
                var count = 1

                for (nr, nc) in [(row-1, col), (row, col-1), (row, col+1), (row+1, col)] where 0..<NM[0] ~= nr && 0..<NM[1] ~= nc && map[nr][nc] != -2 && visitedGroup.insert(map[nr][nc]).inserted {
                    count += groupCount[map[nr][nc]]
                }

                countMap += "\(count % 10)"
            }

            countMap += "\n"
        }

        print(countMap)
    }
}
