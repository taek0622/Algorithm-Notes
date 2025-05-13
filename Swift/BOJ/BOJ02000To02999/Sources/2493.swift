//
//  2493.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 11/29/23.
//

//  문제 링크: https://www.acmicpc.net/problem/2493
//  알고리즘 분류: 자료 구조, 스택

import Shared

public struct BOJ2493: Solvable {
    public init() {}

    public func run() {
        // 메모리: 106148KB, 시간: 360ms, 코드 길이: 571B
        let N = Int(readLine()!)!
        var towers = readLine()!.split(separator: " ").map { Int($0)! }
        var stack = [(Int, Int)]()
        var result = Array(repeating: 0, count: N)

        while towers.count > 1 {
            let current = towers.removeLast()
            let idx = towers.count

            while !stack.isEmpty && stack.last!.1 < towers.last! {
                result[stack.last!.0] = towers.count
                stack.removeLast()
            }

            if towers.last! > current {
                result[idx] = towers.count
            } else {
                stack.append((idx, current))
            }
        }

        print(result.map { String($0) }.joined(separator: " "))
    }
}
