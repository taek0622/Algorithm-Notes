//
//  13301.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/07/23.
//

// 문제: https://www.acmicpc.net/problem/13301

import Shared

public struct BOJ13301: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69100KB, 시간: 8ms, 코드 길이: 138B
        let N = Int(readLine()!)!
        var tiles = [1, 1]

        for _ in 1..<N {
            tiles = [tiles[1], tiles.reduce(0, +)]
        }

        print(tiles.reduce(0, +) * 2)
    }
}
