//
//  31669.swift
//  BOJ31000To31999
//
//  Created by 김민택 on 10/20/25.
//

//  문제 링크: https://www.acmicpc.net/problem/31669
//  알고리즘 분류: 구현

import Shared

public struct BOJ31669: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69104KB, 시간: 8ms, 코드 길이: 368B
        let NM = readLine()!.split(separator: " ").map { Int($0)! }
        var schedule = Array(repeating: false, count: NM[1])

        for _ in 0..<NM[0] {
            let teacher = readLine()!.map { $0 == "O" }

            for idx in 0..<NM[1] where !schedule[idx] {
                schedule[idx] = teacher[idx]
            }
        }

        let res = schedule.firstIndex(of: false) ?? -1

        print(res < 0 ? "ESCAPE FAILED" : res + 1)
    }
}
