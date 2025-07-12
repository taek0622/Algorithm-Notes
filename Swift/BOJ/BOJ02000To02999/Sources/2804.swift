//
//  2804.swift
//  BOJ02000To02999
//
//  Created by 김민택 on 7/12/25.
//

//  문제 링크: https://www.acmicpc.net/problem/2804
//  알고리즘 분류: 구현, 문자열

import Shared

public struct BOJ2804: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69104KB, 시간: 8ms, 코드 길이: 474B
        let AB = readLine()!.split(separator: " ").map { String($0) }
        let (A, B) = (AB[0].map { String($0) }, AB[1].map { String($0) })
        var puzzle = Array(repeating: Array(repeating: ".", count: A.count), count: B.count)
        var (a, b) = (0, 0)

        for idx in A.indices where B.contains(A[idx]) {
            (a, b) = (idx, B.firstIndex(of: A[idx])!)
            break
        }

        puzzle[b] = A

        for idx in 0..<puzzle.count {
            puzzle[idx][a] = B[idx]
        }

        print(puzzle.map { $0.joined() }.joined(separator: "\n"))
    }
}
