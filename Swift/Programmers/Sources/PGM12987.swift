//
//  PGM12987.swift
//  Programmers
//
//  Created by 김이안 on 5/1/26.
//

//  문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/12987
//  문제 분류: Summer/Winter Coding(~2018)

import Foundation

import Shared

public struct PGM12987: Solvable {
    public init() {}

    public func run() {
        print(solution([5, 1, 3, 7], [2, 2, 6, 8]) == 3)
        print(solution([2, 2, 2, 2], [1, 1, 1, 1]) == 0)
    }

    func solution(_ a: [Int], _ b: [Int]) -> Int {
        let a = a.sorted(by: >)
        let b = b.sorted(by: >)
        var score = 0
        var front = 0
        var back = b.count - 1

        for num in a {
            if b[front] > num {
                score += 1
                front += 1
            } else {
                back -= 1
            }
        }

        return score
    }
}
