//
//  31472.swift
//  BOJ31000To31999
//
//  Created by 김민택 on 9/18/25.
//

//  문제 링크: https://www.acmicpc.net/problem/31472
//  알고리즘 분류: 수학, 구현, 사칙연산

import Shared

public struct BOJ31472: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69100KB, 시간: 8ms, 코드 길이: 100B
        let W = Int(readLine()!)! * 2
        var side = 2

        while side * side < W {
            side += 1
        }

        print(side * 4)
    }
}
