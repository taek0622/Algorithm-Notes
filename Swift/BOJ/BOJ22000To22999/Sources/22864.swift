//
//  22864.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 8/11/24.
//

//  문제 링크: https://www.acmicpc.net/problem/22864
//  알고리즘 분류: 수학, 구현, 그리디 알고리즘, 사칙연산, 시뮬레이션

import Shared

public struct BOJ22864: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69104KB, 시간: 8ms, 코드 길이: 308B
        let ABCM = readLine()!.split(separator: " ").map { Int($0)! }
        var time = 24
        var task = 0
        var tired = 0

        while time > 0 {
            if tired + ABCM[0] > ABCM[3] {
                tired -= ABCM[2]
                tired = max(0, tired)
            } else {
                tired += ABCM[0]
                task += ABCM[1]
            }

            time -= 1
        }

        print(task)
    }
}
