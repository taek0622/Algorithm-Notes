//
//  2721.swift
//  BOJ02000To02999
//
//  Created by 김민택 on 7/17/25.
//

//  문제 링크: https://www.acmicpc.net/problem/2721
//  알고리즘 분류: 수학, 구현

import Shared

public struct BOJ2721: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69100KB, 시간: 8ms, 코드 길이: 165B
        for _ in 0..<Int(readLine()!)! {
            var sum = 1
            var wn = 0

            for k in 1...Int(readLine()!)! {
                sum += k+1
                wn += k * sum
            }

            print(wn)
        }
    }
}
