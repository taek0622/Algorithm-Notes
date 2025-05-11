//
//  26215.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 3/6/25.
//

//  문제 링크: https://www.acmicpc.net/problem/26215
//  알고리즘 분류: 구현, 그리디 알고리즘, 정렬, 시뮬레이션

import Shared

public struct BOJ26215: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69108KB, 시간: 8ms, 코드 길이: 350B
        _ = readLine()
        var a = readLine()!.split(separator: " ").map { Int($0)! }.sorted(by: >)
        var time = 0

        while a.count > 1 {
            a[0] -= 1
            a[1] -= 1
            a.sort(by: >)
            time += 1

            if time > 1440 {
                break
            }

            while a.last == 0 {
                a.removeLast()
            }
        }

        if a.count == 1 {
            time += a[0]
        }

        print(time <= 1440 ? time : -1)
    }
}
