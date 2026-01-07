//
//  23397.swift
//  BOJ23000To23999
//
//  Created by 김민택 on 1/7/26.
//

//  문제 링크: https://www.acmicpc.net/problem/23397
//  알고리즘 분류: 구현

import Shared

public struct BOJ23397: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69104KB, 시간: 8ms, 코드 길이: 258B
        let TDM = readLine()!.split(separator: " ").map { Int($0)! }
        var (diff, prev) = (0, 0)

        for _ in 0..<TDM[2] {
            let now = Int(readLine()!)!
            diff = max(diff, now - prev)
            prev = now
        }

        diff = max(diff, TDM[1] - prev)
        print(diff >= TDM[0] ? "Y" : "N")
    }
}
