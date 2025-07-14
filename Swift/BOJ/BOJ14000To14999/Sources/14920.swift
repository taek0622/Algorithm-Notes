//
//  14920.swift
//  BOJ14000To14999
//
//  Created by 김민택 on 7/14/25.
//

//  문제 링크: https://www.acmicpc.net/problem/14920
//  알고리즘 분류: 수학, 구현, 시뮬레이션

import Shared

public struct BOJ14920: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69100KB, 시간: 8ms, 코드 길이: 130B
        var n = [Int(readLine()!)!]

        while n.last! != 1 {
            n.append(n.last! % 2 == 0 ? n.last! / 2 : 3 * n.last! + 1)
        }

        print(n.count)
    }
}
