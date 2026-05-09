//
//  PGM161988.swift
//  Programmers
//
//  Created by 김이안 on 5/9/26.
//

//  문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/161988
//  문제 분류: 연습문제

import Foundation

import Shared

public struct PGM161988: Solvable {
    public init() {}

    public func run() {
        print(solution([2, 3, -6, 1, 3, -1, 2, 4]) == 10)
    }

    func solution(_ sequence: [Int]) -> Int64 {
        var posSum = Int64(sequence[0])
        var negSum = Int64(-sequence[0])
        var maxSum = max(posSum, negSum)

        for idx in 1..<sequence.count {
            let curr = Int64(idx % 2 == 0 ? sequence[idx] : -sequence[idx])
            posSum = max(posSum + curr, curr)
            negSum = max(negSum - curr, -curr)
            maxSum = max(maxSum, posSum, negSum)
        }

        return maxSum
    }
}
