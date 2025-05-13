//
//  8896.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2/11/25.
//

//  문제 링크: https://www.acmicpc.net/problem/8896
//  알고리즘 분류: 구현, 시뮬레이션

import Shared

public struct BOJ8896: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69108KB, 시간: 8ms, 코드 길이: 1106B
        let T = Int(readLine()!)!

        for _ in 0..<T {
            let N = Int(readLine()!)!
            var robots = Array(repeating: (0, [String]()), count: N)

            for idx in 0..<N {
                robots[idx] = (idx + 1, readLine()!.map { String($0) })
            }

            for round in 0..<robots[0].1.count {
                var rsp = Set<String>()

                for robot in robots {
                    rsp.insert(robot.1[round])
                }

                if rsp.count != 2 {
                    continue
                }

                var lose = [Int]()

                if rsp.contains("R") && rsp.contains("S") {
                    for idx in robots.indices where robots[idx].1[round] == "S" {
                        lose.append(idx)
                    }
                } else if rsp.contains("R") && rsp.contains("P") {
                    for idx in robots.indices where robots[idx].1[round] == "R" {
                        lose.append(idx)
                    }
                } else {
                    for idx in robots.indices where robots[idx].1[round] == "P" {
                        lose.append(idx)
                    }
                }

                lose.reversed().forEach {
                    robots.remove(at: $0)
                }
            }

            print(robots.count > 1 ? 0 : robots[0].0)
        }
    }
}
