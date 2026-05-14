//
//  PGM60062.swift
//  Programmers
//
//  Created by 김이안 on 5/14/26.
//

//  문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/60062
//  문제 분류: 2020 KAKAO BLIND RECRUITMENT

import Foundation

import Shared

public struct PGM60062: Solvable {
    public init() {}

    public func run() {
        print(solution(12, [1, 5, 6, 10], [1, 2, 3, 4]) == 2)
        print(solution(12, [1, 3, 4, 9, 10], [3, 5, 7]) == 1)
    }

    func solution(_ n: Int, _ weak: [Int], _ dist: [Int]) -> Int {
        let res = search(n, weak, dist, dist.count)
        print(res > 8 ? -1 : res)
        return res > 8 ? -1 : res
    }

    func search(_ n: Int, _ weak: [Int], _ dist: [Int], _ total: Int) -> Int {
        if weak.count == 0 { return total - dist.count }
        if dist.count == 0 { return 9 }

        let weak = weak.sorted()
        var dist = dist.sorted()
        let now = dist.removeLast()
        var minCount = 9

        for idx in weak.indices {
            let covered = weak[idx] + now
            var next = [Int]()

            for cIdx in stride(from: idx+1, to: weak.count, by: 1) where weak[cIdx] > covered {
                next.append(weak[cIdx])
            }

            for cIdx in stride(from: 0, to: idx, by: 1) where weak[cIdx] + n > covered {
                next.append(weak[cIdx] + n)
            }

            minCount = min(minCount, search(n, next, dist, total))
        }

        return minCount
    }
}
