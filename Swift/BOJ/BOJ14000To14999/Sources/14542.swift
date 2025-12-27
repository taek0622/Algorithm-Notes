//
//  14542.swift
//  BOJ14000To14999
//
//  Created by 김민택 on 12/27/25.
//

//  문제 링크: https://www.acmicpc.net/problem/14542
//  알고리즘 분류: 수학, 구현, 사칙연산

import Shared

public struct BOJ14542: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69104KB, 시간: 8ms, 코드 길이: 420B
        var caseIdx = 1

        while let input = readLine(), input != "0" {
            let height = Int(input)!
            var sum = 0

            for idx in 1...height {
                let input = readLine()!.split(separator: " ").map { Int($0)! }

                if idx == 1 || idx == height {
                    sum += input.reduce(0, +)
                } else {
                    sum += input.first! + input.last!
                }
            }

            print("Case #\(caseIdx):\(sum)")
            caseIdx += 1
        }
    }
}
