//
//  32089.swift
//  BOJ32000To32999
//
//  Created by 김민택 on 5/26/25.
//

//  문제 링크: https://www.acmicpc.net/problem/32089
//  알고리즘 분류: 구현

import Shared

public struct BOJ32089: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69104KB, 시간: 12ms, 코드 길이: 466B
        while let input = readLine(), input != "0" {
            let n = Int(input)!
            let a = readLine()!.split(separator: " ").map { Int($0)! }
            var (count, maxCount) = (0, 0)
            
            if n < 4 {
                maxCount = a.reduce(0, +)
            } else {
                count = a[0] + a[1] + a[2]
                maxCount = count
            }

            for idx in stride(from: 3, to: n, by: 1) {
                count += a[idx]
                count -= a[idx-3]
                maxCount = max(maxCount, count)
            }

            print(maxCount)
        }
    }
}
