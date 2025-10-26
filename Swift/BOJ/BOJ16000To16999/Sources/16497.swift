//
//  16497.swift
//  BOJ16000To16999
//
//  Created by 김민택 on 10/26/25.
//

//  문제 링크: https://www.acmicpc.net/problem/16497
//  알고리즘 분류: 구현

import Shared

public struct BOJ16497: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69108KB, 시간: 8ms, 코드 길이: 329B
        let N = Int(readLine()!)!
        var day = Array(repeating: 0, count: 31)

        for _ in 0..<N {
            let input = readLine()!.split(separator: " ").map { Int($0)! - 1 }
            day[input[0]] -= 1
            day[input[1]] += 1
        }

        var K = Int(readLine()!)!

        for idx in 0..<31 {
            K += day[idx]

            if K < 0 {
                break
            }
        }

        print(K < 0 ? 0 : 1)
    }
}
