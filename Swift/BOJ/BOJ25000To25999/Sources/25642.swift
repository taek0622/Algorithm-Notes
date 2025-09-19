//
//  25642.swift
//  BOJ25000To25999
//
//  Created by 김민택 on 9/19/25.
//

//  문제 링크: https://www.acmicpc.net/problem/25640
//  알고리즘 분류: 수학, 구현, 사칙연산, 시뮬레이션

import Shared

public struct BOJ25642: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69104KB, 시간: 4ms, 코드 길이: 234B
        var AB = readLine()!.split(separator: " ").map { Int($0)! }

        while true {
            AB[1] += AB[0]

            if AB[1] > 4 {
                print("yt")
                break
            }

            AB[0] += AB[1]

            if AB[0] > 4 {
                print("yj")
                break
            }
        }
    }
}
