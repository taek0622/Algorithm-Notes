//
//  2828.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 11/22/24.
//

//  문제 링크: https://www.acmicpc.net/problem/2828
//  알고리즘 분류: 구현, 그리디 알고리즘

import Shared

public struct BOJ2828: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69104KB, 시간: 8ms, 코드 길이: 469B
        let NM = readLine()!.split(separator: " ").map { Int($0)! }
        var bucket = (1, NM[1])
        let count = Int(readLine()!)!
        var distance = 0

        for _ in 0..<count {
            let apple = Int(readLine()!)!

            if apple > bucket.1 {
                distance += apple - bucket.1
                bucket.0 += apple - bucket.1
                bucket.1 = apple
            } else if apple < bucket.0 {
                distance += bucket.0 - apple
                bucket.1 += apple - bucket.0
                bucket.0 = apple
            }
        }

        print(distance)
    }
}
