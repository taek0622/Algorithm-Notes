//
//  17618.swift
//  BOJ17000To17999
//
//  Created by 김민택 on 6/19/25.
//

//  문제 링크: https://www.acmicpc.net/problem/17618
//  알고리즘 분류: 구현, 브루트포스 알고리즘

import Shared

public struct BOJ17618: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69100KB, 시간: 156ms, 코드 길이: 240B
        let N = Int(readLine()!)!
        var count = 0

        for num in 1...N {
            var newNum = num
            var sum = 0

            while newNum > 0 {
                sum += newNum % 10
                newNum /= 10
            }

            if num % sum == 0 {
                count += 1
            }
        }

        print(count)
    }
}
