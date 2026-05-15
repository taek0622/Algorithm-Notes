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

        for now in dist.reversed() {
            for idx in weak.indices {
                var covered = 0

                for cIdx in stride(from: idx+1, to: weak.count, by: 1) where weak[cIdx] <= weak[idx] + now {
                    covered += 1
                }

                for cIdx in 0..<idx where weak[idx] + now - n >= weak[cIdx] {
                    covered += 1
                }

                var num = 1 << (weak.count - idx - 1)
                var temp = num

                for _ in 0..<covered {
                    temp = temp >> 1
                    num += temp
                }

                status[num] = 1
            }
        }
        print(status)

        return 0
    }
}
