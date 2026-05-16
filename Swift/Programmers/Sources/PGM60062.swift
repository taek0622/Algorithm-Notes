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
        var status = Array(repeating: 9, count: 1 << weak.count)
        status[0] = 0
        let res = cover(0, &status, n, weak, dist.sorted(), dist.count)
        print(res)
        return res > 8 ? -1 : res
    }

    func cover(_ prevCovered: Int, _ status: inout [Int], _ n: Int, _ weak: [Int], _ dist: [Int], _ total: Int) -> Int {
        if prevCovered == (1 << weak.count) - 1 { return total - dist.count }

        var minCount = 9

        if dist.count == 0 { return minCount }

        var dist = dist
        let now = dist.removeLast()

        for idx in weak.indices where 1<<(weak.count-idx-1) & prevCovered == 0 {
            var nowCovered = 1 << (weak.count-idx-1)

            for cIdx in stride(from: idx+1, to: weak.count, by: 1) where weak[cIdx] <= weak[idx] + now {
                nowCovered = nowCovered | (1 << (weak.count-cIdx-1))
            }

            for cIdx in 0..<idx where weak[idx] + now - n >= weak[cIdx] {
                nowCovered = nowCovered | (1 << (weak.count-cIdx-1))
            }

            nowCovered = nowCovered | prevCovered
            status[nowCovered] = min(status[nowCovered], status[prevCovered] + 1)
            minCount = min(minCount, cover(nowCovered, &status, n, weak, dist, total))
        }

        return minCount
    }
}
