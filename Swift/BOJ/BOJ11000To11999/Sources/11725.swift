//
//  11725.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 10/25/23.
//

//  문제 링크: https://www.acmicpc.net/problem/11725
//  알고리즘 분류: 그래프 이론, 그래프 탐색, 트리, 너비 우선 탐색, 깊이 우선 탐색

import Shared

public struct BOJ11725: Solvable {
    public init() {}

    public func run() {
        // 메모리: 87120KB, 시간: 240ms, 코드 길이: 708B
        let N = Int(readLine()!)!
        var node = [Int: [Int]]()
        var visited = Set<Int>()
        var root = Array(repeating: 0, count: N+1)

        for _ in 0..<N-1 {
            let input = readLine()!.split(separator: " ").map { Int($0)! }
            node[input[0], default: []].append(input[1])
            node[input[1], default: []].append(input[0])
        }

        var queue = [1]
        var idx = 0

        while idx < queue.count {
            let number = queue[idx]
            idx += 1

            if !visited.insert(number).inserted {
                continue
            }

            let nextNodes = node[number, default: []].filter { root[$0] == 0 }
            queue.append(contentsOf: nextNodes)

            for next in nextNodes {
                root[next] = number
            }
        }

        print(root[2...].map { String($0) }.joined(separator: "\n"))
    }
}
