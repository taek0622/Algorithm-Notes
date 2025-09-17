//
//  24724.swift
//  BOJ24000To24999
//
//  Created by 김민택 on 9/17/25.
//

//  문제 링크: https://www.acmicpc.net/problem/24724
//  알고리즘 분류: 구현

import Shared

public struct BOJ24724: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69100KB, 시간: 40ms, 코드 길이: 195B
        let T = Int(readLine()!)!

        for idx in 1...T {
            let N = Int(readLine()!)!

            for _ in 0...N {
                _ = readLine()
            }

            print("Material Management \(idx)\nClassification ---- End!")
        }
    }
}
