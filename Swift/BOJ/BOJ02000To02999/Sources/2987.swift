//
//  2987.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2/22/24.
//

//  문제 링크: https://www.acmicpc.net/problem/2987
//  알고리즘 분류: 수학, 구현, 기하학, 다각형의 넓이, 볼록 다각형 내부의 점 판정

import Foundation

import Shared

public struct BOJ2987: Solvable {
    public init() {}

    public func run() {
        // 메모리: 79516KB, 시간: 12ms, 코드 길이: 750B
        var A = readLine()!.split(separator: " ").map { Int($0)! }
        let B = readLine()!.split(separator: " ").map { Int($0)! }
        var C = readLine()!.split(separator: " ").map { Int($0)! }
        let N = Int(readLine()!)!
        var count = 0

        if CCW(C, B, A) > 0 {
            swap(&C, &A)
        }

        for _ in 0..<N {
            let tree = readLine()!.split(separator: " ").map { Int($0)! }

            if 0 < CCW(tree, B, A) || 0 < CCW(tree, A, C) || 0 < CCW(tree, C, B) {
                continue
            }

            count += 1
        }

        print("\(String(format: "%.1f", abs(Double(CCW(A, B, C)) / 2)))\n\(count)")

        func CCW(_ point1: [Int], _ point2: [Int], _ point3: [Int]) -> Int {
            return point1[0] * (point2[1] - point3[1]) + point2[0] * (point3[1] - point1[1]) + point3[0] * (point1[1] - point2[1])
        }
    }
}
