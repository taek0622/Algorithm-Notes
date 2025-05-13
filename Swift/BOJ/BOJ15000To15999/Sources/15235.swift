//
//  15235.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 1/27/25.
//

//  문제 링크: https://www.acmicpc.net/problem/15235
//  알고리즘 분류: 구현, 자료 구조, 시뮬레이션, 큐

import Shared

public struct BOJ15235: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69108KB, 시간: 8ms, 코드 길이: 349B
        let N = Int(readLine()!)!
        var needs = readLine()!.split(separator: " ").map { Int($0)! }
        var times = Array(repeating: 0, count: N)
        var sec = 1

        while needs.reduce(0, +) > 0 {
            for idx in 0..<N where needs[idx] != 0 {
                times[idx] = sec
                needs[idx] -= 1
                sec += 1
            }
        }

        print(times.map { String($0) }.joined(separator: " "))
    }
}
