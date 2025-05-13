//
//  1182.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 10/24/23.
//

//  문제 링크: https://www.acmicpc.net/problem/1182
//  알고리즘 분류: 브루트포스 알고리즘, 백트래킹

import Shared

public struct BOJ1182: Solvable {
    public init() {}

    public func run() {
        solution2()
    }

    // 메모리: 69104KB, 시간: 96ms, 코드 길이: 542B
    private func solution1() {
        let NS = readLine()!.split(separator: " ").map { Int(String($0))! }
        let numbers = readLine()!.split(separator: " ").map { Int(String($0))! }
        var visited = Array(repeating: false, count: 21)
        var count = 0
        var sum = 0

        dfs(0, 0)

        print(count)

        func dfs(_ depth: Int, _ start: Int) {
            if sum == NS[1] && depth >= 1 {
                count += 1
            }

            for idx in start..<NS[0] where !visited[idx] {
                visited[idx] = true
                sum += numbers[idx]

                dfs(depth+1, idx)

                visited[idx] = false
                sum -= numbers[idx]
            }
        }
    }

    // 메모리: 69104KB, 시간: 28ms, 코드 길이: 386B
    private func solution2() {
        let NS = readLine()!.split(separator: " ").map { Int(String($0))! }
        let numbers = readLine()!.split(separator: " ").map { Int(String($0))! }
        var count = 0

        for idx in 0..<NS[0] {
            dfs(idx, numbers[idx])
        }

        print(count)

        func dfs(_ idx: Int, _ sum: Int) {
            if sum == NS[1] {
                count += 1
            }

            for next in (idx+1)..<NS[0] {
                dfs(next, sum + numbers[next])
            }
        }
    }
}
