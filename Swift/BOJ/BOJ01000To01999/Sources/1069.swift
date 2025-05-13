//
//  1069.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2/25/24.
//

//  문제 링크: https://www.acmicpc.net/problem/1069
//  알고리즘 분류: 기하학, 애드 혹, 많은 조건 분기

import Foundation

import Shared

public struct BOJ1069: Solvable {
    public init() {}

    public func run() {
        // 메모리: 79508KB, 시간: 12ms, 코드 길이: 518B
        let XYDT = readLine()!.split(separator: " ").map { Double($0)! }
        let distance = sqrt(XYDT[0] * XYDT[0] + XYDT[1] * XYDT[1])
        let jump = Int(distance / XYDT[2])
        let remain = distance - Double(jump) * XYDT[2]
        var time = min(distance, remain + Double(jump) * XYDT[3], Double(jump + 1) * XYDT[2] - distance + Double(jump + 1) * XYDT[3])

        if jump > 0 {
            time = min(time, Double(jump + 1) * XYDT[3])
        } else if distance < XYDT[2] {
            time = min(time, XYDT[3] * 2)
        }

        print(String(format: "%.9f", time))
    }
}
