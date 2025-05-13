//
//  1681.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 9/17/24.
//

//  문제 링크: https://www.acmicpc.net/problem/1681
//  알고리즘 분류: 구현, 브루트포스 알고리즘

import Foundation

import Shared

public struct BOJ1681: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69104KB, 시간: 32ms, 코드 길이: 370B
        var NL = readLine()!.split(separator: " ").map { Int($0)! }
        var label = 1

        while NL[0] > 0 {
            var isContain = false
            var current = label

            while current > 0 {
                if current % 10 == NL[1] {
                    isContain = true
                    break
                }

                current /= 10
            }

            if !isContain {
                NL[0] -= 1
            }

            label += 1
        }

        print(label - 1)
    }
}
