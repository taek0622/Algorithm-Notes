//
//  1871.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 8/1/24.
//

//  문제 링크: https://www.acmicpc.net/problem/1871
//  알고리즘 분류: 구현, 문자열

import Shared

public struct BOJ1871: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69104KB, 시간: 8ms, 코드 길이: 356B
        let N = Int(readLine()!)!

        for _ in 0..<N {
            let board = readLine()!.split(separator: "-").map { String($0) }
            let front = Array(board[0])
            let frontSum = (Int(front[0].asciiValue!) - 65) * 26 * 26 + (Int(front[1].asciiValue!) - 65) * 26 + (Int(front[2].asciiValue!) - 65)
            print(-100...100 ~= frontSum - Int(board[1])! ? "nice" : "not nice")
        }
    }
}
