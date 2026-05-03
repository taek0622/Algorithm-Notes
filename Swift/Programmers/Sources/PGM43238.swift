//
//  PGM43238.swift
//  Programmers
//
//  Created by 김이안 on 5/3/26.
//

//  문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/43238
//  문제 분류: 이분탐색

import Foundation

import Shared

public struct PGM43238: Solvable {
    public init() {}

    public func run() {
        print(solution(6, [7, 10]) == 28)
    }

    func solution(_ n: Int, _ times: [Int]) -> Int64 {
        var left = 1
        var right = times.max()! * n

        while left < right {
            let mid = (left + right) / 2
            var count = 0

            for time in times {
                count += mid / time

                if count >= n {
                    break
                }
            }

            if count >= n {
                right = mid
            } else {
                left = mid + 1
            }
        }

        return Int64(left)
    }
}
