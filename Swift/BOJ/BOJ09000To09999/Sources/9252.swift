//
//  9252.swift
//  BOJ09000To09999
//
//  Created by 김이안 on 3/25/26.
//

//  문제 링크: https://www.acmicpc.net/problem/9252
//  알고리즘 분류: 다이나믹 프로그래밍, 문자열, 역추적, 최장 공통 부분 수열 문제

import Shared

public struct BOJ9252: Solvable {
    public init() {}

    public func run() {
        // 메모리: 76984KB, 시간: 36ms, 코드 길이: 830B
        let sentence1 = Array(" " + readLine()!)
        let sentence2 = Array(" " + readLine()!)
        var dp = Array(repeating: Array(repeating: 0, count: sentence2.count), count: sentence1.count)
        var res = [Character]()

        for row in 1..<sentence1.count {
            for col in 1..<sentence2.count {
                if sentence1[row] == sentence2[col] {
                    dp[row][col] = dp[row-1][col-1] + 1
                } else {
                    dp[row][col] = max(dp[row][col-1], dp[row-1][col])
                }
            }
        }

        var row = dp.count - 1
        var col = dp[0].count - 1

        while row > 0 && col > 0 {
            if sentence1[row] == sentence2[col] {
                res.append(sentence1[row])
                row -= 1
                col -= 1
            } else if dp[row-1][col] > dp[row][col-1] {
                row -= 1
            } else {
                col -= 1
            }
        }

        print(res.count)

        if res.count != 0 {
            print(String(res.reversed()))
        }
    }
}
