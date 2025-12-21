//
//  34758.swift
//  BOJ34000To34999
//
//  Created by 김민택 on 12/21/25.
//

//  문제 링크: https://www.acmicpc.net/problem/34758
//  알고리즘 분류: 구현, 애드 혹

import Shared

public struct BOJ34758: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69104KB, 시간: 8ms, 코드 길이: 221B
        let XY = readLine()!.split(separator: " ").map { Int($0)! }
        let N = Int(readLine()!)!

        for _ in 0..<N {
            let xy = readLine()!.split(separator: " ").map { Int($0)! }
            print(xy[0] == XY[0] || xy[1] == XY[1] ? 0 : 1)
        }
    }
}
