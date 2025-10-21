//
//  31776.swift
//  BOJ31000To31999
//
//  Created by 김민택 on 10/21/25.
//

//  문제 링크: https://www.acmicpc.net/problem/31776
//  알고리즘 분류: 구현

import Shared

public struct BOJ31776: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69104KB, 시간: 4ms, 코드 길이: 292B
        let N = Int(readLine()!)!
        var count = 0

        for _ in 0..<N {
            let i = readLine()!.split(separator: " ").map { Int($0)! }

            if i[0] == -1 {
                continue
            } else if (i[0] <= i[1] && (i[1] <= i[2] || i[2] == -1)) || (i[1] == -1 && i[2] == -1) {
                count += 1
            }
        }

        print(count)
    }
}
