//
//  14583.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2/19/24.
//

//  문제 링크: https://www.acmicpc.net/problem/14583
//  알고리즘 분류: 수학, 기하학

import Foundation

class BOJ14583: Solvable {
    func run() {
        // 메모리: 79508KB, 시간: 12ms, 코드 길이: 509B
        let HV = readLine()!.split(separator: " ").map { Double($0)! }
        var (V2, h, v, v1, v2, H2) = (0.0, 0.0, 0.0, 0.0, 0.0, 0.0)

        V2 = (HV[0] * sqrt(HV[0] * HV[0] + HV[1] * HV[1]) - HV[0] * HV[0]) / HV[1]
        h = sqrt(HV[0] * HV[0] + V2 * V2) / 2

        let cos2x = HV[0] / sqrt(HV[0] * HV[0] + HV[1] * HV[1])
        let sinx = sqrt((1 - cos2x) / 2)

        H2 = sqrt(HV[0] * HV[0] + HV[1] * HV[1]) - HV[0]
        v1 = HV[0] * sinx
        v2 = H2 * sinx

        v = v1 + v2

        print("\(String(format: "%.2f", h)) \(String(format: "%.2f", v))")
    }
}
