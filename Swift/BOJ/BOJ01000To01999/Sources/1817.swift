//
//  1817.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 12/11/24.
//

//  문제 링크: https://www.acmicpc.net/problem/1817
//  알고리즘 분류: 구현, 그리디 알고리즘

import Shared

public struct BOJ1817: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69104KB, 시간: 8ms, 코드 길이: 375B
        let NM = readLine()!.split(separator: " ").map { Int($0)! }
        var count = 0

        if NM[0] > 0 {
            let books = readLine()!.split(separator: " ").map { Int($0)! }
            var weight = 0
            count += 1

            for book in books {
                if weight + book > NM[1] {
                    count += 1
                    weight = book
                } else {
                    weight += book
                }
            }
        }

        print(count)
    }
}
