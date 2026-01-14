//
//  7280.swift
//  BOJ07000To07999
//
//  Created by 김민택 on 1/14/26.
//

//  문제 링크: https://www.acmicpc.net/problem/7280
//  알고리즘 분류: 구현, 브루트포스 알고리즘

import Shared

public struct BOJ7280: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69100KB, 시간: 8ms, 코드 길이: 211B
        var cards = Set<String>()

        for prefix in ["S", "B", "V", "K"] {
            for num in 1...13 {
                cards.insert("\(prefix) \(num)")
            }
        }

        for _ in 0..<51 {
            cards.remove(readLine()!)
        }

        print(Array(cards)[0])
    }
}
