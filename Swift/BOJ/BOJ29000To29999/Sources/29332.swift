//
//  29332.swift
//  BOJ29000To29999
//
//  Created by 김민택 on 12/8/25.
//

//  문제 링크: https://www.acmicpc.net/problem/29332
//  알고리즘 분류: 구현

import Shared

public struct BOJ29332: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69104KB, 시간: 188ms, 코드 길이: 663B
        let N = Int(readLine()!)!
        var xRange = (-2000000000, 2000000000)
        var yRange = (-2000000000, 2000000000)

        for _ in 0..<N {
            let xyd = readLine()!.split(separator: " ").map { String($0) }
            let (x, y) = (Int(xyd[0])!, Int(xyd[1])!)

            if xyd[2] == "L" {
                xRange.1 = min(xRange.1, x)
            } else if xyd[2] == "R" {
                xRange.0 = max(xRange.0, x)
            } else if xyd[2] == "U" {
                yRange.0 = max(yRange.0, y)
            } else {
                yRange.1 = min(yRange.1, y)
            }
        }

        print(xRange.0 == -2000000000 || xRange.1 == 2000000000 || yRange.0 == -2000000000 || yRange.1 == 2000000000 ? "Infinity" : (xRange.1 - xRange.0 - 1) * (yRange.1 - yRange.0 - 1))
    }
}
