//
//  2022.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2/9/24.
//

//  문제 링크: https://www.acmicpc.net/problem/2022
//  알고리즘 분류: 수학, 기하학, 이분 탐색, 피타고라스 정리

import Foundation

import Shared

public struct BOJ2022: Solvable {
    public init() {}

    public func run() {
        // 메모리: 79508KB, 시간: 12ms, 코드 길이: 443B
        let xyc = readLine()!.split(separator: " ").map { Double($0)! }
        var (left, right) = (0.0, min(xyc[0], xyc[1]))

        while (right - left) >= 0.001 {
            let width = (left + right) / 2
            let h1 = sqrt(xyc[0] * xyc[0] - width * width)
            let h2 = sqrt(xyc[1] * xyc[1] - width * width)

            if (h1 * h2) / (h1 + h2) >= xyc[2] {
                left = width
            } else {
                right = width
            }
        }

        print(String(format: "%.3f", right))
    }
}
