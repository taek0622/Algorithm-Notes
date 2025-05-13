//
//  13335.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 1/7/24.
//

//  문제 링크: https://www.acmicpc.net/problem/13335
//  알고리즘 분류: 구현, 자료 구조, 시뮬레이션, 큐

import Shared

public struct BOJ13335: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69104KB, 시간: 12ms, 코드 길이: 462B
        let nwL = readLine()!.split(separator: " ").map { Int($0)! }
        let a = readLine()!.split(separator: " ").map { Int($0)! }
        var bridge = Array(repeating: 0, count: nwL[1])
        var second = 0
        var idx = 0
        var weight = 0

        while idx < a.count {
            second += 1

            weight -= bridge.removeFirst()

            if weight + a[idx] <= nwL[2] {
                weight += a[idx]
                bridge.append(a[idx])
                idx += 1
            } else {
                bridge.append(0)
            }
        }

        print(second + nwL[1])
    }
}
