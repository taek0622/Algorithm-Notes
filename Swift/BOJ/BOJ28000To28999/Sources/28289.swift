//
//  28289.swift
//  BOJ28000To28999
//
//  Created by 김민택 on 9/15/25.
//

//  문제 링크: https://www.acmicpc.net/problem/28289
//  알고리즘 분류: 구현

import Shared

public struct BOJ28289: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69108KB, 시간: 8ms, 코드 길이: 387B
        let P = Int(readLine()!)!
        var students = [0, 0, 0, 0]

        for _ in 0..<P {
            let G = readLine()!.split(separator: " ").map { Int($0)! }

            if G[0] == 1 {
                students[3] += 1
            } else if G[1] == 3 {
                students[1] += 1
            } else if G[1] == 4 {
                students[2] += 1
            } else {
                students[0] += 1
            }
        }

        print(students.map { String($0) }.joined(separator: "\n"))
    }
}
