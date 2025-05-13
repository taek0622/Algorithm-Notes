//
//  1236.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 6/25/24.
//

//  문제 링크: https://www.acmicpc.net/problem/1236
//  알고리즘 분류: 구현

import Shared

public struct BOJ1236: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69108KB, 시간: 8ms, 코드 길이: 442B
        let NM = readLine()!.split(separator: " ").map { Int($0)! }
        var row = Array(repeating: false, count: NM[0])
        var col = Array(repeating: false, count: NM[1])

        for rowIdx in 0..<NM[0] {
            let input = readLine()!.map { $0 == "X" }

            if input.contains(true) {
                row[rowIdx] = true
            }

            for colIdx in 0..<NM[1] where input[colIdx] {
                col[colIdx] = true
            }
        }

        print(max(row.filter { !$0 }.count, col.filter { !$0 }.count))
    }
}
