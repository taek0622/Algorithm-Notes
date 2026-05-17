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
        cover(0, &status, n, weak, dist, dist.count)
        let res = status[(1 << weak.count) - 1]
        return res > 8 ? -1 : res
    }

    func cover(_ prevCovered: Int, _ status: inout [Int], _ n: Int, _ weak: [Int], _ dist: [Int], _ total: Int) {
        if prevCovered == (1 << weak.count) - 1 { return }

        if dist.count == 0 {
            status[prevCovered] = min(9, status[prevCovered])
            return
        }

        var dist = dist
        let friendDist = dist.removeLast()

        for start in weak.indices where 1<<(weak.count-start-1) & prevCovered == 0 {
            var nowCovered = 1 << (weak.count - start - 1)

            for cover in stride(from: start+1, to: weak.count, by: 1) where weak[cover] <= weak[start] + friendDist {
                nowCovered = nowCovered | (1 << (weak.count - cover - 1))
            }

            for cover in 0..<start where weak[start] + friendDist - n >= weak[cover] {
                nowCovered = nowCovered | (1 << (weak.count - cover - 1))
            }

            nowCovered = nowCovered | prevCovered

            if status[nowCovered] > status[prevCovered] + 1 {
                status[nowCovered] = status[prevCovered] + 1
                cover(nowCovered, &status, n, weak, dist, total)
            }
        }
    }
}
