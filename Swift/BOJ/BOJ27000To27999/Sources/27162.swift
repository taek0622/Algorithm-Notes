//
//  27162.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 4/14/25.
//

//  문제 링크: https://www.acmicpc.net/problem/27162
//  알고리즘 분류: 구현, 브루트포스 알고리즘, 많은 조건 분기

import Shared

public struct BOJ27162: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69116KB, 시간: 8ms, 코드 길이: 1892B
        let combi = readLine()!.map { $0 == "Y" }
        let dice = readLine()!.split(separator: " ").map { Int($0)! }
        var count = Array(repeating: 0, count: 6)
        var maxScore = 0

        for num in dice {
            count[num - 1] += 1
        }

        if combi[0] {
            maxScore = max(maxScore, (count[0] + 2) * 1)
        }

        if combi[1] {
            maxScore = max(maxScore, (count[1] + 2) * 2)
        }

        if combi[2] {
            maxScore = max(maxScore, (count[2] + 2) * 3)
        }

        if combi[3] {
            maxScore = max(maxScore, (count[3] + 2) * 4)
        }

        if combi[4] {
            maxScore = max(maxScore, (count[4] + 2) * 5)
        }

        if combi[5] {
            maxScore = max(maxScore, (count[5] + 2) * 6)
        }

        if combi[6] {
            if !count.filter { $0 == 3 }.isEmpty {
                maxScore = max(maxScore, count.enumerated().filter { $0.element == 3 }.map { $0.offset + 1 }[0] * 4)
            } else if !count.filter { $0 == 2 }.isEmpty {
                maxScore = max(maxScore, count.enumerated().filter { $0.element == 2 }.map { $0.offset + 1 }[0] * 4)
            }
        }

        if combi[7] {
            if !count.filter { $0 == 3 }.isEmpty {
                let num = count.enumerated().filter { $0.element == 3 }.map { $0.offset + 1 }[0]
                maxScore = max(maxScore, num * 3 + (num == 6 ? 5 : 6) * 2)
            } else if !count.filter { $0 == 2 }.isEmpty {
                let num = count.enumerated().filter { $0.element == 2 }.map { $0.offset + 1 }[0]
                let other = count.enumerated().filter { $0.element == 1 }.map { $0.offset + 1 }[0]
                maxScore = max(maxScore, num * 2 + other * 3, num * 3 + other * 2)
            }
        }

        if combi[8] {
            if count.filter { $0 > 1 }.isEmpty && count[5] == 0 {
                maxScore = max(maxScore, 30)
            }
        }

        if combi[9] {
            if count.filter { $0 > 1 }.isEmpty && count[0] == 0 {
                maxScore = max(maxScore, 30)
            }
        }

        if combi[10] {
            if !count.filter { $0 == 3 }.isEmpty {
                maxScore = max(maxScore, 50)
            }
        }

        if combi[11] {
            maxScore = max(maxScore, dice.reduce(0, +) + 12)
        }

        print(maxScore)
    }
}
