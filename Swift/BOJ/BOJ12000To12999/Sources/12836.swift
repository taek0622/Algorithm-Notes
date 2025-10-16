//
//  12836.swift
//  BOJ12000To12999
//
//  Created by 김민택 on 10/16/25.
//

//  문제 링크: https://www.acmicpc.net/problem/12836
//  알고리즘 분류: 구현

import Shared

public struct BOJ12836: Solvable {
    public func run() {
        // 메모리: 69104KB, 시간: 8ms, 코드 길이: 342B
        let NQ = readLine()!.split(separator: " ").map { Int($0)! }
        var account = Array(repeating: 0, count: NQ[0])

        for _ in 0..<NQ[1] {
            let query = readLine()!.split(separator: " ").map { Int($0)! }

            if query[0] == 1 {
                account[query[1]-1] += query[2]
            } else {
                print(account[query[1]-1...query[2]-1].reduce(0, +))
            }
        }
    }
}
