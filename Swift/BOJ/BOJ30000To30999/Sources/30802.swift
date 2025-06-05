//
//  30802.swift
//  BOJ30000To30999
//
//  Created by 김민택 on 6/5/25.
//

//  문제 링크: https://www.acmicpc.net/problem/30802
//  알고리즘 분류: 수학, 구현, 사칙연산

import Shared

public struct BOJ30802: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69108KB, 시간: 4ms, 코드 길이: 310B
        let N = Int(readLine()!)!
        let sizes = readLine()!.split(separator: " ").map { Int($0)! }
        let TP = readLine()!.split(separator: " ").map { Int($0)! }
        var shirts = 0

        for size in sizes {
            shirts += size / TP[0]

            if size % TP[0] != 0 {
                shirts += 1
            }
        }

        print("\(shirts)\n\(N/TP[1]) \(N%TP[1])")
    }
}
