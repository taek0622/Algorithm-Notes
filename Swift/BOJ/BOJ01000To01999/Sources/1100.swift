//
//  1100.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 6/5/24.
//

//  문제 링크: https://www.acmicpc.net/problem/1100
//  알고리즘 분류: 구현, 문자열

import Shared

public struct BOJ1100: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69096KB, 시간: 8ms, 코드 길이: 185B
        var count = 0

        for row in 0..<8 {
            let input = readLine()!.map { $0 == "F" }

            for col in 0..<8 where (row + col) % 2 == 0 && input[col] {
                count += 1
            }
        }

        print(count)
    }
}
