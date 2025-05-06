//
//  3028.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 7/28/24.
//

//  문제 링크: https://www.acmicpc.net/problem/3028
//  알고리즘 분류: 구현, 문자열, 시뮬레이션

import Shared

public struct BOJ3028: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69096KB, 시간: 8ms, 코드 길이: 263B
        var cups = [true, false, false]
        let input = readLine()!

        for char in input {
            if char == "A" {
                cups.swapAt(0, 1)
            } else if char == "B" {
                cups.swapAt(1, 2)
            } else {
                cups.swapAt(0, 2)
            }
        }

        print(cups.firstIndex(of: true)! + 1)
    }
}
