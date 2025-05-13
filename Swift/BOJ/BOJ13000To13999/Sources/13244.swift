//
//  13244.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 4/19/24.
//

//  문제 링크: https://www.acmicpc.net/problem/13244
//  알고리즘 분류: 자료 구조, 그래프 이론, 그래프 탐색, 트리, 깊이 우선 탐색, 분리 집합

import Shared

public struct BOJ13244: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69108KB, 시간: 20ms, 코드 길이: 1145B
        let T = Int(readLine()!)!

        for _ in 0..<T {
            let N = Int(readLine()!)!
            var connection = Array(0...N)
            let M = Int(readLine()!)!
            var isTree = true

            for _ in 0..<M {
                let input = readLine()!.split(separator: " ").map { Int($0)! }
                let tempBool = union(&connection, input[0], input[1])

                if isTree {
                    isTree = tempBool
                }
            }

            var count = 0

            for node in 1...N where connection[node] == node {
                count += 1
            }

            if count > 1 {
                isTree = false
            }

            print(isTree ? "tree" : "graph")
        }

        func find(_ connection: inout [Int], _ node: Int) -> Int {
            if connection[node] != node {
                connection[node] = find(&connection, connection[node])
            }

            return connection[node]
        }

        func union(_ connection: inout [Int], _ node1: Int, _ node2: Int) -> Bool {
            let rootNode1 = find(&connection, node1)
            let rootNode2 = find(&connection, node2)

            if rootNode1 == rootNode2 {
                return false
            } else if rootNode1 < rootNode2 {
                connection[rootNode2] = rootNode1
            } else {
                connection[rootNode1] = rootNode2
            }

            return true
        }
    }
}
