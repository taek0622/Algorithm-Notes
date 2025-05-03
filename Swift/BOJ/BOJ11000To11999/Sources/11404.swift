//
//  11404.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 11/13/23.
//

//  문제 링크: https://www.acmicpc.net/problem/11404
//  알고리즘 분류: 그래프 이론, 최단 경로, 플로이드-워셜

import Shared

public struct BOJ11404: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69108KB, 시간: 188ms, 코드 길이: 680B
        let n = Int(readLine()!)!
        let m = Int(readLine()!)!
        var path = Array(repeating: Array(repeating: 10000001, count: n), count: n)

        for _ in 0..<m {
            let input = readLine()!.split(separator: " ").map { Int(String($0))! }
            path[input[0]-1][input[1]-1] = min(path[input[0]-1][input[1]-1], input[2])
        }

        for idx in 0..<n {
            for row in 0..<n {
                for col in 0..<n {
                    path[row][col] = min(path[row][col], path[row][idx] + path[idx][col])
                }
            }
        }

        for row in 0..<n {
            for col in 0..<n where row == col || path[row][col] > 10000000 {
                path[row][col] = 0
            }
        }

        for idx in 0..<n {
            print(path[idx].map { String($0) }.joined(separator: " "))
        }
    }
}
