//
//  2447.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/01/06.
//

// 문제: https://www.acmicpc.net/problem/2447

import Shared

public struct BOJ2447: Solvable {
    public init() {}

    public func run() {
        solution2()
    }

    // 메모리: 76980KB, 시간: 836ms, 코드 길이: 501B
    private func solution1() {
        let N = Int(readLine()!)!
        var result = ""

        for row in 0..<N {
            for column in 0..<N {
                result += printStar(N, row, column)
            }

            result += "\n"
        }

        print(result)

        func printStar(_ N: Int, _ row: Int, _ column: Int) -> String {
            var stars = ""

            if ((row / N) % 3 == 1) && ((column / N) % 3 == 1) {
                stars += " "
            } else {
                if N / 3 == 0 {
                    stars += "*"
                } else {
                    stars += printStar(N/3, row, column)
                }
            }

            return stars
        }
    }

    // 메모리: 88612KB, 시간: 52ms, 코드 길이: 522B
    private func solution2() {
        let N = Int(readLine()!)!

        print(printStar(N).joined(separator: "\n"))

        func printStar(_ N: Int) -> [String] {
            if N == 1 {
                return ["*"]
            }

            let pattern = printStar(N/3)

            var result = [String]()

            for star in pattern {
                result.append(String(repeating: star, count: 3))
            }

            for star in pattern {
                result.append(star + String(repeating: " ", count: N/3) + star)
            }

            for star in pattern {
                result.append(String(repeating: star, count: 3))
            }

            return result
        }
    }
}
