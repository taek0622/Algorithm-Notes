//
//  27885.swift
//  BOJ27000To27999
//
//  Created by 김민택 on 12/18/25.
//

//  문제 링크: https://www.acmicpc.net/problem/27885
//  알고리즘 분류: 수학, 구현, 문자열, 사칙연산

import Shared

public struct BOJ27885: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69396KB, 시간: 8ms, 코드 길이: 563B
        var times = Array(repeating: true, count: 24 * 60 * 60)
        let ch = readLine()!.split(separator: " ").map { Int($0)! }

        for _ in 0..<ch[0] {
            let hms = readLine()!.split(separator: ":").map { Int($0)! }
            let time = hms[0] * 60 * 60 + hms[1] * 60 + hms[2]

            for idx in 0..<40 {
                times[idx+time] = false
            }
        }

        for _ in 0..<ch[1] {
            let hms = readLine()!.split(separator: ":").map { Int($0)! }
            let time = hms[0] * 60 * 60 + hms[1] * 60 + hms[2]

            for idx in 0..<40 {
                times[idx+time] = false
            }
        }

        print(times.filter { $0 }.count)
    }
}
