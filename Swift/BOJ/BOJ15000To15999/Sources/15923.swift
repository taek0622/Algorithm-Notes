//
//  15923.swift
//  BOJ15000To15999
//
//  Created by 김민택 on 9/6/25.
//

//  문제 링크: https://www.acmicpc.net/problem/15923
//  알고리즘 분류: 수학, 구현, 기하학

import Shared

public struct BOJ15923: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69104KB, 시간: 8ms, 코드 길이: 321B
        let N = Int(readLine()!)!
        var (xMax, xMin, yMax, yMin) = (0, Int.max, 0, Int.max)

        for _ in 0..<N {
            let xy = readLine()!.split(separator: " ").map { Int($0)! }
            xMax = max(xMax, xy[0])
            xMin = min(xMin, xy[0])
            yMax = max(yMax, xy[1])
            yMin = min(yMin, xy[1])
        }

        print(((xMax - xMin) + (yMax - yMin)) * 2)
    }
}
