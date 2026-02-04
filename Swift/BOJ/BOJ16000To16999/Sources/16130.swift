//
//  16130.swift
//  BOJ16000To16999
//
//  Created by 김민택 on 2/4/26.
//

//  문제 링크: https://www.acmicpc.net/problem/16130
//  알고리즘 분류: 수학, 구현, 사칙연산, 시뮬레이션

import Shared

public struct BOJ16130: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69100KB, 시간: 4ms, 코드 길이: 613B
        let N = Int(readLine()!)!

        for _ in 0..<N {
            let scores = readLine()!.map { 48...57 ~= Int($0.asciiValue!) ? Int(String($0))! : Int($0.asciiValue!) - 55 }
            var total = 0
            var week = 0
            var w = 0

            for score in scores {
                let prev = total / 10
                total += score

                if prev != total / 10 {
                    if 1...3 ~= total / 10 {
                        week += total / 10
                    } else if total / 10 == 4 {
                        w = 1
                    } else if total / 10 > 4 {
                        w = 2
                    }
                }
            }

            print("\(week)\(w == 1 ? "(weapon)" : w == 2 ? "(09)" : "")")
        }
    }
}
