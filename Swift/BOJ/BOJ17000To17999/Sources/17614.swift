//
//  17614.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 7/11/24.
//

//  문제 링크: https://www.acmicpc.net/problem/17614
//  알고리즘 분류: 구현, 브루트포스 알고리즘

import Shared

public struct BOJ17614: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69100KB, 시간: 20ms, 코드 길이: 266B
        let N = Int(readLine()!)!
        var count = 0

        for num in 1...N {
            var number = num

            while number > 0 {
                let digit = number % 10

                if digit == 3 || digit == 6 || digit == 9 {
                    count += 1
                }

                number /= 10
            }
        }

        print(count)
    }
}
