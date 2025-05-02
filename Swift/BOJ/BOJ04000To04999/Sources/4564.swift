//
//  4564.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 10/20/24.
//

//  문제 링크: https://www.acmicpc.net/problem/4564
//  알고리즘 분류: 수학, 구현

import Shared

public struct BOJ4564: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69104KB, 시간: 8ms, 코드 길이: 286B
        while let input = readLine(), input != "0" {
            var result = input
            var number = input.map { Int(String($0))! }

            while number.count > 1 {
                result += " \(number.reduce(1, *))"
                number = String(number.reduce(1, *)).map { Int(String($0))! }
            }

            print(result)
        }
    }
}
