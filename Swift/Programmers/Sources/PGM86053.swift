//
//  PGM86053.swift
//  Programmers
//
//  Created by 김이안 on 5/5/26.
//

//  문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/86053
//  문제 분류: 월간 코드 챌린지 시즌3

import Foundation

import Shared

public struct PGM86053: Solvable {
    public init() {}

    public func run() {
        print(solution(10, 10, [100], [100], [7], [10]) == 50)
        print(solution(90, 500, [70, 70, 0], [0, 0, 500], [100, 100, 2], [4, 8, 1]) == 499)
    }

    func solution(_ a: Int, _ b: Int, _ g: [Int], _ s: [Int], _ w: [Int], _ t: [Int]) -> Int64 {
        var left = 0
        var right = 400000000000000

        while left < right {
            let mid = (left + right) / 2
            var aWeight = 0
            var bWeight = 0
            var totalWeight = 0

            for idx in t.indices {
                let roundTripCount = mid / t[idx]
                let tripCount = roundTripCount / 2 + (roundTripCount % 2 == 0 ? 0 : 1)
                let moveWeight = tripCount * w[idx]
                aWeight += min(g[idx], moveWeight)
                bWeight += min(s[idx], moveWeight)
                totalWeight += min(g[idx] + s[idx], moveWeight)
            }

            if aWeight >= a && bWeight >= b && totalWeight >= a + b {
                right = mid
            } else {
                left = mid + 1
            }
        }

        return Int64(right)
    }
}
