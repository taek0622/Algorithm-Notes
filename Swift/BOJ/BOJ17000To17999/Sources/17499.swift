//
//  17499.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2/12/25.
//

//  문제 링크: https://www.acmicpc.net/problem/17499
//  알고리즘 분류: 수학, 구현

import Shared

public struct BOJ17499: Solvable {
    public init() {}

    public func run() {
        // 메모리: 84536KB, 시간: 416ms, 코드 길이: 513B
        let NQ = readLine()!.split(separator: " ").map { Int($0)! }
        var a = readLine()!.split(separator: " ").map { Int($0)! }
        var start = 0

        for _ in 0..<NQ[1] {
            let operation = readLine()!.split(separator: " ").map { Int($0)! }

            if operation[0] == 1 {
                a[(start + operation[1] - 1) % NQ[0]] += operation[2]
                continue
            }

            start = (operation[0] == 2 ? start - operation[1] + NQ[0] : start + operation[1]) % NQ[0]
        }

        print((a[start...] + a[..<start]).map { String($0) }.joined(separator: " "))
    }
}
