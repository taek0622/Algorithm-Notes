//
//  16922.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 12/3/24.
//

//  문제 링크: https://www.acmicpc.net/problem/16922
//  알고리즘 분류: 수학, 구현, 브루트포스 알고리즘, 조합론, 백트래킹

import Shared

public struct BOJ16922: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69104KB, 시간: 8ms, 코드 길이: 301B
        let N = Int(readLine()!)!
        var numbers = Set([0])

        for _ in 0..<N {
            var next = Set<Int>()

            for number in numbers {
                next.insert(number + 1)
                next.insert(number + 5)
                next.insert(number + 10)
                next.insert(number + 50)
            }

            numbers = next
        }

        print(numbers.count)
    }
}
