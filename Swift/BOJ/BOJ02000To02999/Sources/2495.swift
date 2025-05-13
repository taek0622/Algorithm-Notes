//
//  2495.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 7/4/24.
//

//  문제 링크: https://www.acmicpc.net/problem/2495
//  알고리즘 분류: 구현, 문자열

import Shared

public struct BOJ2495: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69096KB, 시간: 8ms, 코드 길이: 345B
        for _ in 0..<3 {
            let input = Array(readLine()!)
            var (count, maxCount) = (1, 1)

            for idx in 1..<8 {
                if input[idx-1] == input[idx] {
                    count += 1
                } else {
                    if count > maxCount {
                        maxCount = count
                    }

                    count = 1
                }
            }

            print(max(count, maxCount))
        }
    }
}
