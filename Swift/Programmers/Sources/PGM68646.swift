//
//  PGM68646.swift
//  Programmers
//
//  Created by 김이안 on 5/2/26.
//

//  문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/68646
//  문제 분류: 월간 코드 챌린지 시즌1

import Foundation

import Shared

public struct PGM68646: Solvable {
    public init() {}

    public func run() {
        print(solution([9, -1, -5]) == 3)
        print(solution([-16, 27, 65, -2, 58, -92, -71, -68, -61, -33]) == 6)
    }

    func solution(_ a: [Int]) -> Int {
        var res = Set<Int>()
        var minNum = Int.max

        for num in a where num < minNum {
            res.insert(num)
            minNum = num
        }

        minNum = Int.max

        for idx in stride(from: a.count - 1, through: 0, by: -1) where a[idx] < minNum {
            res.insert(a[idx])
            minNum = a[idx]
        }

        return res.count
    }
}
