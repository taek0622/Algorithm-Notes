//
//  20207.swift
//  BOJ20000To20999
//
//  Created by 김민택 on 6/16/25.
//

//  문제 링크: https://www.acmicpc.net/problem/20207
//  알고리즘 분류: 구현, 그리디 알고리즘, 정렬

import Shared

public struct BOJ20207: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69104KB, 시간: 8ms, 코드 길이: 480B
        let N = Int(readLine()!)!
        var count = Array(repeating: 0, count: 366)
        var size = 0

        for _ in 0..<N {
            let SE = readLine()!.split(separator: " ").map { Int($0)! }

            for idx in SE[0]...SE[1] {
                count[idx] += 1
            }
        }

        var paper = (0, 0)

        for idx in 0...365 where count[idx] != 0 {
            if count[idx-1] == 0 {
                size += paper.0 * paper.1
                paper = (0, 0)
            }

            paper.0 = max(paper.0, count[idx])
            paper.1 += 1
        }

        size += paper.0 * paper.1
        print(size)
    }
}
