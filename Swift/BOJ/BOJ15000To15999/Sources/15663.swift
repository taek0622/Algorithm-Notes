//
//  15663.swift
//  BOJ15000To15999
//
//  Created by 김이안 on 4/11/26.
//

//  문제 링크: https://www.acmicpc.net/problem/15663
//  알고리즘 분류: 백트래킹

import Shared

public struct BOJ15663: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69608KB, 시간: 12ms, 코드 길이: 750B
        let NM = readLine()!.split(separator: " ").map { Int($0)! }
        let nums = readLine()!.split(separator: " ").map { Int($0)! }.sorted()
        var result = ""
        let visited = Array(repeating: false, count: NM[0])

        for idx in nums.indices {
            if idx > 0 && nums[idx] == nums[idx-1] { continue }
            dfs(idx, 1, visited, "\(nums[idx])")
        }

        print(result)

        func dfs(_ idx: Int, _ depth: Int, _ visited: [Bool], _ current: String) {
            if depth == NM[1] {
                result += "\(current)\n"
                return
            }

            var visited = visited
            visited[idx] = true
            var prevValue = -1

            for next in nums.indices where !visited[next] && prevValue != nums[next] {
                dfs(next, depth+1, visited, "\(current) \(nums[next])")
                prevValue = nums[next]
            }
        }
    }
}
