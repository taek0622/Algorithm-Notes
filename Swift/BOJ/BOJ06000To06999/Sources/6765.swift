//
//  6765.swift
//  BOJ06000To06999
//
//  Created by 김민택 on 2/22/26.
//

//  문제 링크: https://www.acmicpc.net/problem/6765
//  알고리즘 분류: 구현, 문자열

import Shared

public struct BOJ6765: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69100KB, 시간: 4ms, 코드 길이: 359B
        let icon = [["*", "x", "*"], [" ", "x", "x"], ["*", " ", "*"]]
        let k = Int(readLine()!)!
        var new = Array(repeating: Array(repeating: "", count: icon.count * k), count: icon.count * k)

        for row in 0..<icon.count * k {
            for col in 0..<icon.count * k {
                new[row][col] = icon[row/k][col/k]
            }
        }

        print(new.map { $0.joined() }.joined(separator: "\n"))
    }
}
