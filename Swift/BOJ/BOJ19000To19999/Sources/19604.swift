//
//  19604.swift
//  BOJ19000To19999
//
//  Created by 김민택 on 2/5/26.
//

//  문제 링크: https://www.acmicpc.net/problem/19604
//  알고리즘 분류: 수학, 구현, 사칙연산

import Shared

public struct BOJ19604: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69104KB, 시간: 4ms, 코드 길이: 312B
        var (minX, minY, maxX, maxY) = (100, 100, 0, 0)
        let N = Int(readLine()!)!

        for _ in 0..<N {
            let xy = readLine()!.split(separator: ",").map { Int($0)! }
            (minX, minY, maxX, maxY) = (min(minX, xy[0]), min(minY, xy[1]), max(maxX, xy[0]), max(maxY, xy[1]))
        }

        print("\(minX-1),\(minY-1)\n\(maxX+1),\(maxY+1)")
    }
}
