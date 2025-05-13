//
//  1709.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2/14/24.
//

//  문제 링크: https://www.acmicpc.net/problem/1709
//  알고리즘 분류: 구현, 기하학, 애드 혹, 피타고라스 정리

import Shared

public struct BOJ1709: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69100KB, 시간: 468ms, 코드 길이: 386B
        let N = Int(readLine()!)!
        let radius = N/2
        var (x, y, count) = (0, radius-1, 0)

        while x <= N && y >= 0 {
            let pythagoras = calculateRadius(x+1, y)

            if pythagoras <= radius * radius {
                x += 1
            }

            if pythagoras >= radius * radius {
                y -= 1
            }

            count += 1
        }

        print(count * 4)

        func calculateRadius(_ x: Int, _ y: Int) -> Int {
            return x * x + y * y
        }
    }
}
