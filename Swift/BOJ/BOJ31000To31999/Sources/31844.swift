//
//  31844.swift
//  BOJ31000To31999
//
//  Created by 김민택 on 10/19/25.
//

//  문제 링크: https://www.acmicpc.net/problem/31844
//  알고리즘 분류: 구현, 문자열

import Shared

public struct BOJ31844: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69096KB, 시간: 4ms, 코드 길이: 306B
        let map = readLine()!.map { String($0) }
        var (r, b, d) = (0, 0, 0)

        for idx in 0..<10 {
            if map[idx] == "@" {
                r = idx
            } else if map[idx] == "#" {
                b = idx
            } else if map[idx] == "!" {
                d = idx
            }
        }

        print((r < b && d < b) || (r > b && d > b) ? -1 : max(r - d, d - r) - 1)
    }
}
