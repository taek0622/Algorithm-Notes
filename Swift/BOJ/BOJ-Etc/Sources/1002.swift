//
//  1002.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/01/17.
//

// 문제: https://www.acmicpc.net/problem/1002

import Foundation

import Shared

public struct BOJ1002: Solvable {
    public init() {}

    public func run() {
        solution2()
    }

    // 메모리: 76512KB, 시간: 12ms 코드 길이: 714B
    private func solution1() {
        let T = Int(readLine()!)!

        for _ in 0..<T {
            let input = readLine()!.split(separator: " ").map { Double(String($0))! }
            let locations = [(input[0], input[1], input[2]), (input[3], input[4] , input[5])]
            let radiusDistance = sqrt(pow(locations[0].0 - locations[1].0, 2) + pow(locations[0].1 - locations[1].1, 2))

            if locations[0] == locations[1] {
                print(-1)
            } else if locations[0].2 + locations[1].2 > radiusDistance && abs(locations[1].2 - locations[0].2) < radiusDistance {
                print(2)
            } else if abs(locations[1].2 - locations[0].2) == radiusDistance || locations[0].2 + locations[1].2 == radiusDistance {
                print(1)
            } else {
                print(0)
            }
        }
    }

    // 메모리: 69104KB, 시간: 8ms, 코드 길이: 698B
    private func solution2() {
        let T = Int(readLine()!)!

        for _ in 0..<T {
            let input = readLine()!.split(separator: " ").map { Double(String($0))! }
            var r1 = input[2], r2 = input[5]
            let radiusDiff = (input[0] - input[3]) * (input[0] - input[3]) + (input[1] - input[4]) * (input[1] - input[4])

            if r1 > r2 {
                let temp = r1
                r1 = r2
                r2 = temp
            }

            if (input[0], input[1], input[2]) == (input[3], input[4], input[5]) {
                print(-1)
            } else if (r1 + r2) * (r1 + r2) > radiusDiff && (r2 - r1) * (r2 - r1) < radiusDiff {
                print(2)
            } else if (r2 - r1) * (r2 - r1) == radiusDiff || (r1 + r2) * (r1 + r2) == radiusDiff {
                print(1)
            } else {
                print(0)
            }
        }
    }
}
