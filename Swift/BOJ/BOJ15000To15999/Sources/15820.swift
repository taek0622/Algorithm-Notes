//
//  15820.swift
//  BOJ15000To15999
//
//  Created by 김민택 on 8/2/25.
//

//  문제 링크: https://www.acmicpc.net/problem/15820
//  알고리즘 분류: 구현

import Shared

public struct BOJ15820: Solvable {
    public func run() {
        // 메모리: 69104KB, 시간: 8ms, 코드 길이: 467B
        var result = "Accepted"
        let S = readLine()!.split(separator: " ").map { Int($0)! }
        compare(S[0], &result, "Wrong Answer")
        compare(S[1], &result, "Why Wrong!!!")
        print(result)

        func compare(_ to: Int, _ result: inout String, _ answer: String) {
            for _ in stride(from: 0, to: to, by: 1) {
                let input = readLine()!.split(separator: " ").map { String($0) }

                if result == "Accepted" && input[0] != input[1] {
                    result = answer
                }
            }
        }
    }
}
