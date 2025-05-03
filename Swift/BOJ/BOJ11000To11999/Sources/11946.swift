//
//  11946.swift
//  BOJ11000To11999
//
//  Created by 김민택 on 5/3/25.
//

//  문제 링크: https://www.acmicpc.net/problem/11946
//  알고리즘 분류: 구현, 정렬

import Shared

public struct BOJ11946: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69116KB, 시간: 16ms, 코드 길이: 1018B
        let nmq = readLine()!.split(separator: " ").map { Int($0)! }
        var teams = Array(repeating: (solved: 0, time: 0), count: nmq[0])
        var trying = Array(repeating: Array(repeating: 0, count: nmq[1]), count: nmq[0])

        for _ in 0..<nmq[2] {
            let input = readLine()!.split(separator: " ")
            let (time, team, problem) = (Int(input[0])!, Int(input[1])! - 1, Int(input[2])! - 1)

            if input[3] == "AC" && trying[team][problem] != -1 {
                teams[team].time += time + trying[team][problem] * 20
                teams[team].solved += 1
                trying[team][problem] = -1
            } else if trying[team][problem] != -1 {
                trying[team][problem] += 1
            }
        }

        teams.enumerated().sorted {
            if $0.element.solved == $1.element.solved {
                if $0.element.time == $1.element.time {
                    return $0.offset < $1.offset
                }

                return $0.element.time < $1.element.time
            }

            return $0.element.solved > $1.element.solved
        }.map { "\($0.offset+1) \($0.element.solved) \($0.element.time)" }.forEach {
            print($0)
        }
    }
}
