//
//  2979.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 6/26/24.
//

//  문제 링크: https://www.acmicpc.net/problem/2979
//  알고리즘 분류: 구현, 시뮬레이션

import Shared

public struct BOJ2979: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69104KB, 시간: 8ms, 코드 길이: 340B
        var time = Array(repeating: 0, count: 101)
        let ABC = [0] + readLine()!.split(separator: " ").map { Int($0)! }
        var price = 0

        for _ in 0..<3 {
            let input = readLine()!.split(separator: " ").map { Int($0)! }

            for idx in input[0]..<input[1] {
                time[idx] += 1
            }
        }

        for car in time {
            price += car * ABC[car]
        }

        print(price)
    }
}
