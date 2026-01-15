//
//  27913.swift
//  BOJ27000To27999
//
//  Created by 김민택 on 1/15/26.
//

//  문제 링크: https://www.acmicpc.net/problem/27913
//  알고리즘 분류: 구현

import Shared

public struct BOJ27913: Solvable {
    public init() {}

    public func run() {
        // 메모리: 72244KB, 시간: 260ms, 코드 길이: 306B
        let NQ = readLine()!.split(separator: " ").map { Int($0)! }
        var up = Set<Int>()

        for idx in 1...NQ[0] where [1, 4, 7].contains(idx % 10) {
            up.insert(idx)
        }

        for _ in 0..<NQ[1] {
            let level = Int(readLine()!)!

            if !up.insert(level).inserted {
                up.remove(level)
            }

            print(up.count)
        }
    }
}
