//
//  10819.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 12/2/23.
//

//  문제 링크: https://www.acmicpc.net/problem/10819
//  알고리즘 분류: 브루트포스 알고리즘, 백트래킹

import Shared

public struct BOJ10819: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69104KB, 시간: 28ms, 코드 길이: 441B
        let N = Int(readLine()!)!
        let A = readLine()!.split(separator: " ").map { Int(String($0))! }
        var result = Int.min

        for idx in A.indices {
            dfs([idx], 1, 0)
        }

        print(result)

        func dfs(_ array: [Int], _ depth: Int, _ sum: Int) {
            if depth == N {
                result = max(result, sum)
                return
            }

            for idx in A.indices where !array.contains(idx) {
                dfs(array + [idx], depth + 1, sum + abs(A[array.last!] - A[idx]))
            }
        }
    }
}
