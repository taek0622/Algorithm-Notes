//
//  11662.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2/15/24.
//

//  문제 링크: https://www.acmicpc.net/problem/11662
//  알고리즘 분류: 수학, 기하학, 삼분 탐색

import Foundation

import Shared

public struct BOJ11662: Solvable {
    public init() {}

    public func run() {
        // 메모리: 79508KB, 시간: 12ms, 코드 길이: 967B
        let locations = readLine()!.split(separator: " ").map { Double($0)! }
        print(ternarySearch(0, 1))

        func ternarySearch(_ left: Double, _ right: Double) -> Double {
            var (left, right) = (left, right)

            while abs(right - left) > 0.00000001 {
                let nextLeft = (2 * left + right) / 3
                let nextRight = (left + 2 * right) / 3

                if calculateDistance(nextLeft) > calculateDistance(nextRight) {
                    left = nextLeft
                } else {
                    right = nextRight
                }
            }

            return calculateDistance(left)
        }

        func calculateDistance(_ time: Double) -> Double {
            let nextMX = locations[0] * time + locations[2] * (1 - time)
            let nextMY = locations[1] * time + locations[3] * (1 - time)
            let nextKX = locations[4] * time + locations[6] * (1 - time)
            let nextKY = locations[5] * time + locations[7] * (1 - time)

            return sqrt((nextKX - nextMX) * (nextKX - nextMX) + (nextKY - nextMY) * (nextKY - nextMY))
        }
    }
}
