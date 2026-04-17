//
//  2141.swift
//  BOJ02000To02999
//
//  Created by 김이안 on 4/17/26.
//

//  문제 링크: https://www.acmicpc.net/problem/2141
//  알고리즘 분류: 그리디 알고리즘, 정렬

import Shared

public struct BOJ2141: Solvable {
    public init() {}

    public func run() {
        // 메모리: 72236KB, 시간: 156ms, 코드 길이: 407B
        let N = Int(readLine()!)!
        var map = [(Int, Int)]()
        var left = 0
        var mid = 0
        var right = 0

        for _ in 0..<N {
            let XA = readLine()!.split(separator: " ").map { Int($0)! }
            map.append((XA[0], XA[1]))
            right += XA[1]
        }

        map.sort { $0.0 < $1.0 }

        for idx in map.indices {
            left += mid
            mid = map[idx].1
            right -= mid

            if left + mid >= right {
                print(map[idx].0)
                break
            }
        }
    }
}
