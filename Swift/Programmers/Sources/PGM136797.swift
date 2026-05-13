//
//  PGM136797.swift
//  Programmers
//
//  Created by 김이안 on 5/13/26.
//

//  문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/136797
//  문제 분류: 연습문제

import Foundation

import Shared

public struct PGM136797: Solvable {
    public init() {}

    public func run() {
        print(solution("1756") == 10)
        print(solution("5123") == 8)
    }

    func solution(_ numbers: String) -> Int {
        let handMoveCost = [[1, 7, 6, 7, 5, 4, 5, 3, 2, 3], [7, 1, 2, 4, 2, 3, 5, 4, 5, 6], [6, 2, 1, 2, 3, 2, 3, 5, 4, 5],
                     [7, 4, 2, 1, 5, 3, 2, 6, 5, 4], [5, 2, 3, 5, 1, 2, 4, 2, 3, 5], [4, 3, 2, 3, 2, 1, 2, 3, 2, 3],
                     [5, 5, 3, 2, 4, 2, 1, 5, 3, 2], [3, 4, 5, 6, 2, 3, 5, 1, 2, 4], [2, 5, 4, 5, 3, 2, 3, 2, 1, 2],
                     [3, 6, 5, 4, 5, 3, 2, 4, 2, 1]]
        var nowCost = Array(repeating: Array(repeating: 0, count: 10), count: 10)
        var queue = [(4, 6)]
        var minRes = Int.max

        for num in numbers {
            let now = Int(String(num))!
            var nextQueue = [(Int, Int)]()
            var nextCost = Array(repeating: Array(repeating: 1000000, count: 10), count: 10)

            for (left, right) in queue {
                if left != now {
                    if nextCost[left][now] == 1000000 {
                        nextQueue.append((left, now))
                    }

                    nextCost[left][now] = min(nextCost[left][now], nowCost[left][right] + handMoveCost[right][now])
                }

                if right != now {
                    if nextCost[now][right] == 1000000 {
                        nextQueue.append((now, right))
                    }

                    nextCost[now][right] = min(nextCost[now][right], nowCost[left][right] + handMoveCost[left][now])
                }
            }

            queue = nextQueue
            nowCost = nextCost
        }

        for row in 0..<10 {
            for col in 0..<10 {
                minRes = min(minRes, nowCost[row][col])
            }
        }

        return minRes
    }
}
