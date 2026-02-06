//
//  31394.swift
//  BOJ31000To31999
//
//  Created by 김민택 on 2/6/26.
//

//  문제 링크: https://www.acmicpc.net/problem/31394
//  알고리즘 분류: 수학, 구현, 사칙연산

import Shared

public struct BOJ31394: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69104KB, 시간: 4ms, 코드 길이: 351B
        let n = Int(readLine()!)!
        var scores = [Int]()

        for _ in 0..<n {
            scores.append(Int(readLine()!)!)
        }

        let scoreSet = Set(scores)

        if scores.contains(3) {
            print("None")
        } else if scoreSet.count == 1 && scores[0] == 5 {
            print("Named")
        } else if Double(scores.reduce(0, +)) / Double(n) >= 4.5 {
            print("High")
        } else {
            print("Common")
        }
    }
}
