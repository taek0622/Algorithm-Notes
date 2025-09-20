//
//  26004.swift
//  BOJ26000To26999
//
//  Created by 김민택 on 9/20/25.
//

//  문제 링크: https://www.acmicpc.net/problem/26004
//  알고리즘 분류: 구현, 문자열

import Shared

public struct BOJ26004: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69292KB, 시간: 16ms, 코드 길이: 381B
        _ = readLine()
        let S = readLine()!
        var count = [0, 0, 0, 0, 0]

        for char in S {
            switch char {
                case "H":
                    count[0] += 1
                case "I":
                    count[1] += 1
                case "A":
                    count[2] += 1
                case "R":
                    count[3] += 1
                case "C":
                    count[4] += 1
                default:
                    break
            }
        }

        print(count.min()!)
    }
}
