//
//  2947.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 7/3/24.
//

//  문제 링크: https://www.acmicpc.net/problem/2947
//  알고리즘 분류: 구현, 시뮬레이션

import Shared

public struct BOJ2947: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69104KB, 시간: 8ms, 코드 길이: 255B
        var woods = readLine()!.split(separator: " ").map { Int($0)! }

        while woods != [1, 2, 3, 4, 5] {
            for idx in 0..<4 where woods[idx] > woods[idx+1] {
                woods.swapAt(idx, idx+1)
                print(woods.map { String($0) }.joined(separator: " "))
            }
        }
    }
}
