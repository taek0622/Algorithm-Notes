//
//  PGM67258.swift
//  Programmers
//
//  Created by 김이안 on 4/29/26.
//

//  문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/67258
//  문제 분류: 2020 카카오 인턴십

import Foundation

import Shared

public struct PGM67258: Solvable {
    public init() {}

    public func run() {
        print(solution(["DIA", "RUBY", "RUBY", "DIA", "DIA", "EMERALD", "SAPPHIRE", "DIA"]) == [3, 7])
        print(solution(["AA", "AB", "AC", "AA", "AC"]) == [1, 3])
        print(solution(["XYZ", "XYZ", "XYZ"]) == [1, 1])
        print(solution(["ZZZ", "YYY", "NNNN", "YYY", "BBB"]) == [1, 5])
    }

    public func solution(_ gems: [String]) -> [Int] {
        let gems = [""] + gems
        let gemCount = Set(gems).count - 1
        var left = 1
        var right = 1
        var minLength = (gems.count - 1, 1, gems.count - 1)
        var inSet = Set<String>()
        var count = [String: Int]()

        while right < gems.count {
            inSet.insert(gems[right])
            count[gems[right], default: 0] +=  1

            while gemCount == inSet.count && count[gems[left], default: 0] > 1 {
                count[gems[left], default: 0] -= 1
                left += 1
            }

            if inSet.count == gemCount && right - left + 1 < minLength.0 {
                minLength = (right - left + 1, left, right)
            }

            right += 1
        }

        return [minLength.1, minLength.2]
    }
}
