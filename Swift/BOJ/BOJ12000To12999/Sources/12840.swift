//
//  12840.swift
//  BOJ12000To12999
//
//  Created by 김민택 on 9/13/25.
//

//  문제 링크: https://www.acmicpc.net/problem/12840
//  알고리즘 분류: 수학, 구현, 사칙연산

import Shared

public struct BOJ12840: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69108KB, 시간: 124ms, 코드 길이: 538B
        let hms = readLine()!.split(separator: " ").map { Int($0)! }
        var time = hms[0] * 3600 + hms[1] * 60 + hms[2]
        let q = Int(readLine()!)!

        for _ in 0..<q {
            let query = readLine()!.split(separator: " ").map { Int($0)! }

            if query[0] == 1 {
                time += query[1]

                while time >= 86400 {
                    time -= 86400
                }
            } else if query[0] == 2 {
                time -= query[1]

                while time < 0 {
                    time += 86400
                }
            } else {
                print("\(time / 3600) \(time % 3600 / 60) \(time % 60)")
            }
        }
    }
}
