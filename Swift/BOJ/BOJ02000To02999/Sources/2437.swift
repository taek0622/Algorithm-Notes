//
//  2437.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 1/30/24.
//

//  문제 링크: https://www.acmicpc.net/problem/2437
//  알고리즘 분류: 그리디 알고리즘, 정렬

import Shared

public struct BOJ2437: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69108KB, 시간: 8ms, 코드 길이: 218B
        let N = Int(readLine()!)!
        let weights = readLine()!.split(separator: " ").map { Int($0)! }.sorted()
        var sum = 1

        for idx in 0..<N {
            if weights[idx] > sum {
                break
            }

            sum += weights[idx]
        }

        print(sum)
    }
}
