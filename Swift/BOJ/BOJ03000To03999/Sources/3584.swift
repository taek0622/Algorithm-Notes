//
//  3584.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 3/4/24.
//

//  문제 링크: https://www.acmicpc.net/problem/3584
//  알고리즘 분류: 그래프 이론, 그래프 탐색, 트리, 깊이 우선 탐색, 최소 공통 조상

import Shared

public struct BOJ3584: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69396KB, 시간: 52ms, 코드 길이: 564B
        let T = Int(readLine()!)!

        for _ in 0..<T {
            let N = Int(readLine()!)!
            var tree = Array(repeating: 0, count: N+1)

            for _ in 1..<N {
                let AB = readLine()!.split(separator: " ").map { Int($0)! }
                tree[AB[1]] = AB[0]
            }

            let nodes = readLine()!.split(separator: " ").map { Int($0)! }
            var path = Set<Int>()
            var now = nodes[0]

            while now != 0 {
                path.insert(now)
                now = tree[now]
            }

            var result = nodes[1]

            while path.insert(result).inserted {
                result = tree[result]
            }

            print(result)
        }
    }
}
