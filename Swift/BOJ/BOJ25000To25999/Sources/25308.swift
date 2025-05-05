//
//  25308.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2/16/24.
//

//  문제 링크: https://www.acmicpc.net/problem/25308
//  알고리즘 분류: 브루트포스 알고리즘, 기하학

import Foundation

import Shared

public struct BOJ25308: Solvable {
    public init() {}

    public func run() {
        // 메모리: 79508KB, 시간: 32ms, 코드 길이: 684B
        let a = readLine()!.split(separator: " ").map { Double($0)! }
        var cases = [[Double]]()
        var visited = Array(repeating: false, count: 8)
        var count = 0

        dfs(0, [])

        print(count)

        func dfs(_ depth: Int, _ numbers: [Double]) {
            if depth == 8 {
                for idx in 0..<8 {
                    if numbers[idx] * numbers[(idx + 2) % 8] * sqrt(2) > numbers[(idx + 1) % 8] * (numbers[idx] + numbers[(idx + 2) % 8]) {
                        return
                    }
                }

                count += 1
                return
            }

            for idx in 0..<8 {
                if !visited[idx] {
                    visited[idx] = true
                    dfs(depth+1, numbers+[a[idx]])
                    visited[idx] = false
                }
            }
        }
    }
}
