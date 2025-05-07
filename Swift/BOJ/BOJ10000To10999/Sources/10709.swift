//
//  10709.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 11/30/24.
//

//  문제 링크: https://www.acmicpc.net/problem/10709
//  알고리즘 분류: 구현, 시뮬레이션

import Shared

public struct BOJ10709: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69108KB, 시간: 8ms, 코드 길이: 497B
        let HW = readLine()!.split(separator: " ").map { Int($0)! }
        var sky = Array(repeating: Array(repeating: -1, count: HW[1]), count: HW[0])

        for row in 0..<HW[0] {
            let input = readLine()!.map { String($0) }

            for col in input.indices {
                if input[col] == "c" {
                    sky[row][col] = 0
                } else if col != 0 && sky[row][col - 1] != -1 {
                    sky[row][col] = sky[row][col - 1] + 1
                }
            }
        }

        sky.forEach {
            print($0.map { String($0) }.joined(separator: " "))
        }
    }
}
