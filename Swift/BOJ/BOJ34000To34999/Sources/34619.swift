//
//  34619.swift
//  BOJ34000To34999
//
//  Created by 김민택 on 12/11/25.
//

//  문제 링크: https://www.acmicpc.net/problem/34619
//  알고리즘 분류: 수학, 구현, 브루트포스 알고리즘, 사칙연산

import Shared

public struct BOJ34619: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69104KB, 시간: 8ms, 코드 길이: 177B
        let abnk = readLine()!.split(separator: " ").map { Int($0)! }
        let j = ((abnk[3] - 1) / abnk[2]) + 1
        print("\((j - 1) / abnk[1] + 1) \(j % abnk[1] == 0 ? abnk[1] : j % abnk[1])")
    }
}
