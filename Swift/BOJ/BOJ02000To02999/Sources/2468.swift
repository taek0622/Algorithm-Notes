//
//  2468.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 10/22/23.
//

//  문제 링크: https://www.acmicpc.net/problem/2468
//  알고리즘 분류: 그래프 이론, 브루트포스 알고리즘, 그래프 탐색, 너비 우선 탐색, 깊이 우선 탐색

import Shared

public struct BOJ2468: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69240KB, 시간: 60ms, 코드 길이: 886B
        let N = Int(readLine()!)!
        var area = [[Int]]()
        var maxCount = 0

        for _ in 0..<N {
            area.append(readLine()!.split(separator: " ").map { Int(String($0))! })
        }

        for height in 0...100 {
            var count = 0
            var tempArea = area

            for row in 0..<N {
                for col in 0..<N where tempArea[row][col] > height {
                    var queue = [(row, col)]
                    tempArea[row][col] = 0

                    while !queue.isEmpty {
                        let (x, y) = queue.removeFirst()

                        [(x-1, y), (x, y-1), (x, y+1), (x+1, y)].forEach {
                            if 0..<N ~= $0.0 && 0..<N ~= $0.1 && tempArea[$0.0][$0.1] > height {
                                queue.append($0)
                                tempArea[$0.0][$0.1] = 0
                            }
                        }
                    }

                    count += 1
                }
            }

            if count > maxCount {
                maxCount = count
            }
        }

        print(maxCount)
    }
}
