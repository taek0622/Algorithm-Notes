//
//  30306.swift
//  BOJ30000To30999
//
//  Created by 김민택 on 1/19/26.
//

//  문제 링크: https://www.acmicpc.net/problem/30306
//  알고리즘 분류: 구현, 브루트포스 알고리즘

import Shared

public struct BOJ30306: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69104KB, 시간: 12ms, 코드 길이: 422B
        let n = Int(readLine()!)!
        let first = readLine()!.split(separator: " ").map { Int($0)! }
        let second = readLine()!.split(separator: " ").map { Int($0)! }
        var count = 0

        for fIdx in 0..<n {
            for sIdx in 0..<n {
                if first[fIdx] > second[sIdx] {
                    count += 1
                } else if first[fIdx] < second[sIdx] {
                    count -= 1
                }
            }
        }

        print(count == 0 ? "tie" : count > 0 ? "first" : "second")
    }
}
