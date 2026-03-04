//
//  24074.swift
//  BOJ24000To24999
//
//  Created by 김이안 on 3/4/26.
//

//  문제 링크: https://www.acmicpc.net/problem/24074
//  알고리즘 분류: 구현

import Shared

public struct BOJ24074: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69104KB, 시간: 8ms, 코드 길이: 187B
        _ = readLine()
        let A = readLine()!.split(separator: " ").map { Int($0)! }
        let maxIdx = A.firstIndex(of: A.max()!)!
        print("\(A[0..<maxIdx].reduce(0, +))\n\(A[(maxIdx+1)...].reduce(0, +))")
    }
}
