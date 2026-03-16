//
//  32943.swift
//  BOJ32000To32999
//
//  Created by 김이안 on 3/16/26.
//

//  문제 링크: https://www.acmicpc.net/problem/32943
//  알고리즘 분류: 구현, 정렬, 시뮬레이션

import Shared

public struct BOJ32943: Solvable {
    public init() {}

    public func run() {
        // 메모리: 76076KB, 시간: 204ms, 코드 길이: 725B
        let XCK = readLine()!.split(separator: " ").map { Int($0)! }
        var logs = [(time: Int, seat: Int, student: Int)]()
        var students = Array(repeating: -1, count: XCK[0])
        var seats = Array(repeating: -1, count: XCK[1])

        for _ in 0..<XCK[2] {
            let input = readLine()!.split(separator: " ").map { Int($0)! - 1 }
            logs.append((input[0], input[1], input[2]))
        }

        logs.sort(by: { $0.time < $1.time })

        for log in logs where seats[log.seat] == -1  {
            if students[log.student] != -1 {
                seats[students[log.student]] = -1
            }

            students[log.student] = log.seat
            seats[log.seat] = log.student
        }

        print(students.enumerated().filter { $0.element != -1 }.map { "\($0.offset+1) \($0.element + 1)" }.joined(separator: "\n"))
    }
}
