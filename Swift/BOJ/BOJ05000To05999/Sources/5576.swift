//
//  5576.swift
//  BOJ05000To05999
//
//  Created by 김민택 on 6/23/25.
//

//  문제 링크: https://www.acmicpc.net/problem/5576
//  알고리즘 분류: 구현, 정렬

import Shared

public struct BOJ5576: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69104KB, 시간: 8ms, 코드 길이: 255B
        var (W, K) = ([Int](), [Int]())

        for idx in 0..<20 {
            let score = Int(readLine()!)!

            if idx < 10 {
                W.append(score)
            } else {
                K.append(score)
            }
        }

        W.sort(by: >)
        K.sort(by: >)
        print(W[0..<3].reduce(0, +), K[0..<3].reduce(0, +))
    }
}
