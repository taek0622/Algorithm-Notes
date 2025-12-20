//
//  9913.swift
//  BOJ09000To09999
//
//  Created by 김민택 on 12/20/25.
//

//  문제 링크: https://www.acmicpc.net/problem/9913
//  알고리즘 분류: 구현

import Shared

public struct BOJ9913: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69100KB, 시간: 8ms, 코드 길이: 142B
        let N = Int(readLine()!)!
        var freq = Array(repeating: 0, count: 1001)

        for _ in 0..<N {
            freq[Int(readLine()!)!] += 1
        }

        print(freq.max()!)
    }
}
