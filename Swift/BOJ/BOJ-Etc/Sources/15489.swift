//
//  15489.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/08/07.
//

// 문제: https://www.acmicpc.net/problem/15489

import Shared

public struct BOJ15489: Solvable {
    public init() {}

    public func run() {
        solution1()
    }

    // 메모리: 69104KB, 시간: 8ms, 코드 길이: 539B
    private func solution1() {
        let input = readLine()!.split(separator: " ").map { Int(String($0))! }
        var triangle = Array(repeating: Array(repeating: 0, count: input[0] + input[2] + 1), count: input[0] + input[2] + 1)
        var sum = 0

        for x in 0..<input[2] {
            for y in input[1]...input[1]+x {
                sum += pascal(input[0]+x, y)
            }
        }

        print(sum)

        func pascal(_ R: Int, _ C: Int) -> Int {
            if C == 1 || C == R {
                return 1
            }

            if triangle[R][C] == 0 {
                triangle[R][C] = pascal(R - 1, C - 1) + pascal(R - 1, C)
            }

            return triangle[R][C]
        }
    }

    // 메모리: 69104KB, 시간: 8ms, 코드 길이: 467B
    private func solution2() {
        let input = readLine()!.split(separator: " ").map { Int(String($0))! }
        var triangle = Array(repeating: Array(repeating: 0, count: input[0] + input[2] + 1), count: input[0] + input[2] + 1)
        var sum = 0

        triangle[1][1] = 1

        for x in 2...input[0]+input[2]  {
            for y in 1...x {
                triangle[x][y] = triangle[x-1][y-1] + triangle[x-1][y]
            }
        }

        for x in 0..<input[2] {
            for y in input[1]...input[1]+x {
                sum += triangle[input[0]+x][y]
            }
        }

        print(sum)
    }
}
