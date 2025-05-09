//
//  5639.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 3/18/24.
//

//  문제 링크: https://www.acmicpc.net/problem/5639
//  알고리즘 분류: 그래프 이론, 그래프 탐색, 트리, 재귀

import Shared

public struct BOJ5639: Solvable {
    public init() {}

    public func run() {
        // 메모리: 70060KB, 시간: 64ms, 코드 길이: 423B
        var nodes = [Int]()

        while let input = readLine(), let num = Int(input) {
            nodes.append(num)
        }

        postOrder(0, nodes.count - 1)

        func postOrder(_ start: Int, _ end: Int) {
            if start > end {
                return
            }

            var mid = end + 1

            for idx in start+1..<end+1 where nodes[start] < nodes[idx] {
                mid = idx
                break
            }

            postOrder(start+1, mid-1)
            postOrder(mid, end)

            print(nodes[start])
        }
    }
}
