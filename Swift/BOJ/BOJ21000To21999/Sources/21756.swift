//
//  21756.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 7/24/24.
//

//  문제 링크: https://www.acmicpc.net/problem/21756
//  알고리즘 분류: 수학, 구현, 시뮬레이션

import Shared

public struct BOJ21756: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69100KB, 시간: 8ms, 코드 길이: 86B
        let N = Int(readLine()!)!
        var now = 1

        while now * 2 <= N {
            now *= 2
        }

        print(now)
    }
}
