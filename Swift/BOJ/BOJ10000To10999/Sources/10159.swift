//
//  10159.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 3/12/24.
//

//  문제 링크: https://www.acmicpc.net/problem/10159
//  알고리즘 분류: 그래프 이론, 그래프 탐색, 최단 경로, 플로이드-워셜

import Shared

public struct BOJ10159: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69108KB, 시간: 16ms, 코드 길이: 588B
        let N = Int(readLine()!)!
        let M = Int(readLine()!)!
        var weight = Array(repeating: Array(repeating: false, count: N), count: N)

        for _ in 0..<M {
            let input = readLine()!.split(separator: " ").map { Int($0)! - 1 }
            weight[input[0]][input[1]] = true
        }

        for mid in 0..<N {
            for row in 0..<N {
                for col in 0..<N where weight[row][mid] && weight[mid][col] {
                    weight[row][col] = true
                }
            }
        }

        for row in 0..<N {
            var count = 0

            for col in 0..<N where row != col && !weight[row][col] && !weight[col][row] {
                count += 1
            }

            print(count)
        }
    }
}
