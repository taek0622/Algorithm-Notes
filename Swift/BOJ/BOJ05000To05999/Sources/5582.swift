//
//  5582.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 1/24/24.
//

//  문제 링크: https://www.acmicpc.net/problem/5582
//  알고리즘 분류: 다이나믹 프로그래밍, 문자열

import Shared

public struct BOJ5582: Solvable {
    public init() {}

    public func run() {
        // 메모리: 194432KB, 시간: 516ms, 코드 길이: 403B
        let string1 = Array(readLine()!)
        let string2 = Array(readLine()!)
        var count = Array(repeating: Array(repeating: 0, count: string2.count + 1), count: string1.count + 1)
        var length = 0

        for row in string1.indices {
            for col in string2.indices where string1[row] == string2[col] {
                count[row+1][col+1] = count[row][col] + 1
                length = max(length, count[row+1][col+1])
            }
        }

        print(length)
    }
}
