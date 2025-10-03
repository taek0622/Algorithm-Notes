//
//  29722.swift
//  BOJ29000To29999
//
//  Created by 김민택 on 10/3/25.
//

//  문제 링크: https://www.acmicpc.net/problem/29722
//  알고리즘 분류: 수학, 구현

import Shared

public struct BOJ29722: Solvable {
    public init() {}

    public func run() {
        // 메모리: 79516KB, 시간: 8ms, 코드 길이: 333B
        let date = readLine()!.split(separator: "-").map { Int($0)! }
        let N = Int(readLine()!)!
        var (y, m, d) = (date[0], date[1], date[2] + N)

        while d > 30 {
            d -= 30
            m += 1
        }

        while m > 12 {
            m -= 12
            y += 1
        }

        print("\(String(format: "%04d", y))-\(String(format: "%02d", m))-\(String(format: "%02d", d))")
    }
}
