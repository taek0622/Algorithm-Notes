//
//  17450.swift
//  BOJ17000To17999
//
//  Created by 김민택 on 9/5/25.
//

//  문제 링크: https://www.acmicpc.net/problem/17450
//  알고리즘 분류: 수학, 구현, 사칙연산

import Shared

public struct BOJ17450: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69100KB, 시간: 8ms, 코드 길이: 283B
        var SNU = [0.0, 0.0, 0.0]

        for idx in 0..<3 {
            let input = readLine()!.split(separator: " ").map { Double($0)! }

            SNU[idx] = (input[1] * 10) / (input[0] * 10 >= 5000 ? input[0] * 10 - 500 : input[0] * 10)
        }

        print(SNU.max()! == SNU[0] ? "S" : SNU.max()! == SNU[1] ? "N" : "U")
    }
}
