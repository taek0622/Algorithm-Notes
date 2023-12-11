//
//  1922.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 12/11/23.
//

//  문제 링크: https://www.acmicpc.net/problem/1922
//  알고리즘 분류: 그래프 이론, 최소 스패닝 트리

class BOJ1922: Solvable {
    func run() {
        // 메모리: 74980KB, 시간: 192ms, 코드 길이: 663B
        let (N, M) = (Int(readLine()!)!, Int(readLine()!)!)
        var costs = [(Int, Int, Int)]()
        var network = Array(0...N)
        var minCost = 0

        for _ in 0..<M {
            let input = readLine()!.split(separator: " ").map { Int(String($0))! }
            costs.append((input[0], input[1], input[2]))
        }

        costs.sort {
            $0.2 < $1.2
        }

        for cost in costs where find(cost.0) != find(cost.1) {
            union(cost.0, cost.1)
            minCost += cost.2
        }

        print(minCost)

        func find(_ target: Int) -> Int {
            if network[target] != target {
                network[target] = find(network[target])
            }

            return network[target]
        }

        func union(_ parent: Int, _ child: Int) {
            network[find(child)] = find(parent)
        }
    }
}
