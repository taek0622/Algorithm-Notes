//
//  23292.swift
//  BOJ23000To23999
//
//  Created by 김민택 on 11/18/25.
//

//  문제 링크: https://www.acmicpc.net/problem/23292
//  알고리즘 분류: 수학, 구현, 사칙연산

import Shared

public struct BOJ23292: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69104KB, 시간: 8ms, 코드 길이: 302B
        let birth = readLine()!.map { Int(String($0))! }
        let N = Int(readLine()!)!
        var maxDate = ("99991231", -1)

        for _ in 0..<N {
            let date = readLine()!
            let ddate = date.map { Int(String($0))! }
            var cal = Array(repeating: 0, count: 8)

            for idx in 0..<8 {
                cal[idx] = (birth[idx] - ddate[idx]) * (birth[idx] - ddate[idx])
            }

            let rhythm = cal[0..<4].reduce(0, +) * cal[4..<6].reduce(0, +) * cal[6..<8].reduce(0, +)

            if rhythm == maxDate.1 {
                maxDate.0 = min(date, maxDate.0)
            } else if rhythm > maxDate.1 {
                maxDate = (date, rhythm)
            }
        }

        print(maxDate.0)
    }
}
