//
//  9501.swift
//  BOJ09000To09999
//
//  Created by 김민택 on 7/27/25.
//

//  문제 링크: https://www.acmicpc.net/problem/9501
//  알고리즘 분류: 수학, 구현, 사칙연산

import Shared

public struct BOJ9501: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69108KB, 시간: 12ms, 코드 길이: 303B
        for _ in 0..<Int(readLine()!)! {
            let ND = readLine()!.split(separator: " ").map { Int($0)! }
            var count = 0

            for _ in 0..<ND[0] {
                let vfc = readLine()!.split(separator: " ").map { Double($0)! }
                if Int(vfc[1] / vfc[2] * vfc[0]) >= ND[1] { count += 1 }
            }

            print(count)
        }
    }
}
