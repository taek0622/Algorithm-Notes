//
//  2357.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 12/26/23.
//

//  문제 링크: https://www.acmicpc.net/problem/2357
//  알고리즘 분류: 자료 구조, 세그먼트 트리

import Shared

public struct BOJ2357: Solvable {
    public init() {}

    public func run() {
        // 메모리: 76144KB, 시간: 436ms, 코드 길이: 1286B
        let NM = readLine()!.split(separator: " ").map { Int($0)! }
        var numbers = Array(repeating: 0, count: NM[0])
        var tree = Array(repeating: (Int.max, 0), count: NM[0] * 4)

        for idx in 0..<NM[0] {
            numbers[idx] = Int(readLine()!)!
        }

        _ = configTree(0, NM[0] - 1, 1)

        for _ in 0..<NM[1] {
            let ab = readLine()!.split(separator: " ").map { Int($0)! }
            let result = findRange(0, NM[0]-1, ab[0]-1, ab[1]-1, 1)
            print(result.0, result.1)
        }

        func configTree(_ start: Int, _ end: Int, _ node: Int) -> (Int, Int) {
            if start == end {
                let value = numbers[start]
                tree[node] = (value, value)
                return tree[node]
            }

            let mid = (start + end) / 2
            let left = configTree(start, mid, node * 2)
            let right = configTree(mid + 1, end, node * 2 + 1)
            tree[node] = (min(left.0, right.0), max(left.1, right.1))

            return tree[node]
        }

        func findRange(_ start: Int, _ end: Int, _ a: Int, _ b: Int, _ node: Int) -> (Int, Int) {
            if b < start || end < a {
                return (Int.max, 0)
            }

            if a <= start && end <= b {
                return tree[node]
            }

            let mid = (start + end) / 2
            let left = findRange(start, mid, a, b, node * 2)
            let right = findRange(mid + 1, end, a, b, node * 2 + 1)

            return (min(left.0, right.0), max(left.1, right.1))
        }
    }
}
