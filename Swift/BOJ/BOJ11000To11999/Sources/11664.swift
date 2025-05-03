//
//  11664.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2/12/24.
//

//  문제 링크: https://www.acmicpc.net/problem/11664
//  알고리즘 분류: 수학, 기하학, 3차원 기하학, 삼분 탐색

import Foundation

import Shared

public struct BOJ11664: Solvable {
    public init() {}

    public func run() {
        // 메모리: 79508KB, 시간: 12ms, 코드 길이: 900B
        let input = readLine()!.split(separator: " ").map { Double($0)! }
        var (A, B, C) = ((input[0], input[1], input[2]), (input[3], input[4], input[5]), (input[6], input[7], input[8]))
        var (start, end) = (calculateDistance(A, C), calculateDistance(B, C))
        var minimumLength = 1000000000000.0

        while true {
            let mid = ((A.0+B.0)/2, (A.1+B.1)/2, (A.2+B.2)/2)
            let midLength = calculateDistance(mid, C)

            if abs(minimumLength - midLength) <= 0.000001 {
                print(midLength)
                break
            }

            minimumLength = min(minimumLength, midLength)

            if start < end {
                B = mid
                end = midLength
            } else {
                A = mid
                start = midLength
            }
        }

        func calculateDistance(_ point1: (Double, Double, Double), _ point2: (Double, Double, Double)) -> Double {
            return sqrt(pow(point2.0-point1.0, 2) + pow(point2.1-point1.1, 2) + pow(point2.2-point1.2, 2))
        }
    }
}
