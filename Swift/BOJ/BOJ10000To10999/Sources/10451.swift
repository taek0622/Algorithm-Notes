//
//  10451.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 4/24/24.
//

//  문제 링크: https://www.acmicpc.net/problem/10451
//  알고리즘 분류: 그래프 이론, 그래프 탐색, 순열 사이클 분할

class BOJ10451: Solvable {
    func run() {
        // 메모리: 69108KB, 시간: 140ms, 코드 길이: 890B
        let T = Int(readLine()!)!

        for _ in 0..<T {
            let N = Int(readLine()!)!
            let S = readLine()!.split(separator: " ").map { Int($0)! }
            var connection = Array(0...N)
            var count = 0

            for (idx, value) in S.enumerated() where !union(idx+1, value, &connection) {
                count += 1
            }

            print(count)
        }

        func find(_ node: Int, _ connection: inout [Int]) -> Int {
            if connection[node] != node {
                connection[node] = find(connection[node], &connection)
            }

            return connection[node]
        }

        func union(_ node1: Int, _ node2: Int, _ connection: inout [Int]) -> Bool {
            let rootNode1 = find(node1, &connection)
            let rootNode2 = find(node2, &connection)

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
