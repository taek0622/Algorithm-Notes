//
//  9063.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/03/28.
//

// 문제: https://www.acmicpc.net/problem/9063

import Shared

public struct BOJ9063: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69104KB, 시간: 76ms, 코드 길이: 411B
        let N = Int(readLine()!)!
        var minPoint = (10000, 10000)
        var maxPoint = (-10000, -10000)

        for _ in 0..<N {
            let bead = readLine()!.split(separator: " ").map { Int(String($0))! }
            minPoint.0 = min(minPoint.0, bead[0])
            maxPoint.0 = max(maxPoint.0, bead[0])
            minPoint.1 = min(minPoint.1, bead[1])
            maxPoint.1 = max(maxPoint.1, bead[1])
        }

        print((maxPoint.1 - minPoint.1) * (maxPoint.0 - minPoint.0))
    }
}
