//
//  21603.swift
//  BOJ21000To21999
//
//  Created by 김민택 on 10/9/25.
//

//  문제 링크: https://www.acmicpc.net/problem/21603
//  알고리즘 분류: 구현

import Shared

public struct BOJ21603: Solvable {
    public init() {}

    public func run() {
        // 메모리: 72280KB, 시간: 20ms, 코드 길이: 256B
        let NK = readLine()!.split(separator: " ").map { Int($0)! }
        var result = [String]()

        for idx in 1...NK[0] where idx % 10 != NK[1] % 10 && idx % 10 != 2 * NK[1] % 10 {
            result.append("\(idx)")
        }

        print("\(result.count)\n\(result.joined(separator: " "))")
    }
}
