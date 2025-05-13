//
//  1547.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 6/11/24.
//

//  문제 링크: https://www.acmicpc.net/problem/1547
//  알고리즘 분류: 구현, 시뮬레이션

import Shared

public struct BOJ1547: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69104KB, 시간: 8ms, 코드 길이: 203B
        var cups = Array(1...3)
        let N = Int(readLine()!)!

        for _ in 0..<N {
            let XY = readLine()!.split(separator: " ").map { Int($0)! - 1 }
            cups.swapAt(XY[0], XY[1])
        }

        print(cups.firstIndex(of: 1)! + 1)
    }
}
