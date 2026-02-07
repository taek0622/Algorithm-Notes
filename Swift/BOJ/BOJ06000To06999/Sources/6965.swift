//
//  6965.swift
//  BOJ06000To06999
//
//  Created by 김민택 on 2/7/26.
//

//  문제 링크: https://www.acmicpc.net/problem/6965
//  알고리즘 분류: 구현, 문자열

import Shared

public struct BOJ6965: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69104KB, 시간: 4ms, 코드 길이: 164B
        let n = Int(readLine()!)!

        for _ in 0..<n {
            print("\(readLine()!.split(separator: " ").map { $0.count == 4 ? "****" : String($0) }.joined(separator: " "))\n")
        }
    }
}
