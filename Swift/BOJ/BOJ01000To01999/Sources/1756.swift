//
//  1756.swift
//  BOJ01000To01999
//
//  Created by 김민택 on 6/15/25.
//

//  문제 링크: https://www.acmicpc.net/problem/1756
//  알고리즘 분류: 구현

import Shared

public struct BOJ1756: Solvable {
    public init() {}

    public func run() {
        // 메모리: 106828KB, 시간: 240ms, 코드 길이: 485B
        let DN = readLine()!.split(separator: " ").map { Int($0)! }
        var oven = readLine()!.split(separator: " ").map { Int($0)! }
        let pizza = readLine()!.split(separator: " ").map { Int($0)! }

        for idx in stride(from: 1, to: DN[0], by: 1) where oven[idx] > oven[idx-1] {
            oven[idx] = oven[idx-1]
        }

        var idx = 0

        while idx < DN[1] && !oven.isEmpty {
            let currentOven = oven.removeLast()

            if currentOven >= pizza[idx] {
                idx += 1
            }
        }

        print(idx < DN[1] ? 0 : oven.count + 1)
    }
}
