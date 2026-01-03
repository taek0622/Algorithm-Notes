//
//  34998.swift
//  BOJ34000To34999
//
//  Created by 김민택 on 1/3/26.
//

//  문제 링크: https://www.acmicpc.net/problem/34998
//  알고리즘 분류: 수학, 구현, 사칙연산

import Shared

public struct BOJ34998: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69104KB, 시간: 8ms, 코드 길이: 381B
        let N = Int(readLine()!)!

        for _ in 0..<N {
            let X = Int(readLine()!)!
            let expression = readLine()!.split(separator: " ").map { String($0) }
            var sum = 0

            for idx in stride(from: 0, to: 2*X+1, by: 2) {
                if expression[idx] == "!" {
                    sum += 10
                } else {
                    sum += Int(expression[idx])!
                }
            }

            print(sum > 9 ? "!" : sum)
        }
    }
}
