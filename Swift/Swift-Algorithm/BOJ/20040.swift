//
//  20040.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 1/10/24.
//

//  문제 링크: https://www.acmicpc.net/problem/20040
//  알고리즘 분류: 자료 구조, 분리 집합

class BOJ20040: Solvable {
    func run() {
        // 메모리: 73012KB, 시간: 720ms, 코드 길이: 638B
        let nm = readLine()!.split(separator: " ").map { Int($0)! }
        var parents = Array(0..<nm[0])
        var result = 0

        for count in 1...nm[1] {
            let input = readLine()!.split(separator: " ").map { Int($0)! }

            if !union(input[0], input[1]) {
                result = count
                break
            }
        }

        print(result)

        func union(_ node1: Int, _ node2: Int) -> Bool {
            let (node1, node2) = (find(node1), find(node2))

            if node1 == node2 {
                return false
            }

            node1 > node2 ? (parents[node1] = node2) : (parents[node2] = node1)

            return true
        }

        func find(_ node: Int) -> Int {
            return parents[node] == node ? node : find(parents[node])
        }
    }
}
