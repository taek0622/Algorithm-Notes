//
//  3029.swift
//  BOJ03000To03999
//
//  Created by 김민택 on 7/10/25.
//

i//  문제 링크: https://www.acmicpc.net/problem/3029
//  알고리즘 분류: 수학, 구현, 문자열, 사칙연산

import Shared

public struct BOJ3029: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69104KB, 시간: 4ms, 코드 길이: 531B
        let current = readLine()!.split(separator: ":").map { Int($0)! }
        let target = readLine()!.split(separator: ":").map { Int($0)! }
        let (c, t) = (current[0] * 3600 + current[1] * 60 + current[2], target[0] * 3600 + target[1] * 60 + target[2])
        let time = t - c + (t - c > 0 ? 0 : 86400)
        print("\(String(repeating: "0", count: 2 - String(time / 3600).count))\(time / 3600):\(String(repeating: "0", count: 2 - String(time % 3600 / 60).count))\(time % 3600 / 60):\(String(repeating: "0", count: 2 - String(time % 60).count))\(time % 60)")
    }
}
