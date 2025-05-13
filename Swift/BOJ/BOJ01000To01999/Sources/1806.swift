//
//  1806.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 11/22/23.
//

//  문제 링크: https://www.acmicpc.net/problem/1806
//  알고리즘 분류: 누적 합, 두 포인터

import Shared

public struct BOJ1806: Solvable {
    public init() {}

    public func run() {
        // 메모리: 76292KB, 시간: 48ms, 코드 길이: 492B
        let NS = readLine()!.split(separator: " ").map { Int(String($0))! }
        let numbers = readLine()!.split(separator: " ").map { Int(String($0))! }
        var end = 0
        var sum = 0
        var count = 0
        var minCount = Int.max

        for start in 0..<NS[0] {
            while sum < NS[1] && end < NS[0] {
                sum += numbers[end]
                end += 1
                count += 1
            }

            if sum >= NS[1] {
                minCount = min(minCount, count)
            }

            sum -= numbers[start]
            count -= 1
        }

        print(minCount == Int.max ? 0 : minCount)
    }
}
