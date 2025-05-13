//
//  14889.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 1/2/24.
//

//  문제 링크: https://www.acmicpc.net/problem/14889
//  알고리즘 분류: 브루트포스 알고리즘, 백트래킹

import Shared

public struct BOJ14889: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69116KB, 시간: 244ms, 코드 길이: 977B
        let N = Int(readLine()!)!
        var S = Array(repeating: Array(repeating: 0, count: N), count: N)
        var minDiff = Int.max

        for idx in 0..<N {
            S[idx] = readLine()!.split(separator: " ").map { Int($0)! }
        }

        dfs([0])

        print(minDiff)

        func dfs(_ start: [Int]) {
            if start.count == N/2 {
                let link = Set(0..<N).filter { !start.contains($0) }.sorted()
                var startSum = 0
                var linkSum = 0

                for left in 0..<N/2-1 {
                    for right in left+1..<N/2 {
                        startSum += (S[start[left]][start[right]] + S[start[right]][start[left]])
                    }
                }

                for left in 0..<N/2-1 {
                    for right in left+1..<N/2 {
                        linkSum += (S[link[left]][link[right]] + S[link[right]][link[left]])
                    }
                }

                let diff = startSum > linkSum ? startSum-linkSum : linkSum-startSum

                minDiff = min(minDiff, diff)

                return
            }

            for num in start.last!+1..<N {
                dfs(start + [num])
            }
        }
    }
}
