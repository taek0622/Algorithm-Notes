//
//  1647.swift
//  BOJ01000To01999
//
//  Created by 김이안 on 4/3/26.
//

//  문제 링크: https://www.acmicpc.net/problem/1647
//  알고리즘 분류: 그래프 이론, 최소 스패닝 트리

import Shared

public struct BOJ1647: Solvable {
    public init() {}

    public func run() {
        // 메모리: 107536KB, 시간: 1632ms, 코드 길이: 939B
        let NM = readLine()!.split(separator: " ").map { Int($0)! }
        var paths = [(start: Int, end: Int, cost: Int)]()
        var parentsNode = Array(0..<NM[0])
        var maxCost = Int.min
        var costSum = 0

        for _ in 0..<NM[1] {
            let ABC = readLine()!.split(separator: " ").map { Int($0)! }
            paths.append((ABC[0]-1, ABC[1]-1, ABC[2]))
        }

        paths.sort(by: { $0.cost < $1.cost })

        for path in paths {
            let parents1 = find(path.start)
            let parents2 = find(path.end)

            if parents1 != parents2 {
                union(parents1, parents2)
                maxCost = max(maxCost, path.cost)
                costSum += path.cost
            }
        }

        print(costSum - maxCost)

        func union(_ group1: Int, _ group2: Int) {
            if group1 < group2 {
                parentsNode[group2] = group1
                return
            }

            parentsNode[group1] = group2
        }

        func find(_ node: Int) -> Int {
            if parentsNode[node] != node {
                parentsNode[node] = find(parentsNode[node])
            }

            return parentsNode[node]
        }
    }
}
