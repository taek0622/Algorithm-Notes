//
//  1711.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2/10/24.
//

//  문제 링크: https://www.acmicpc.net/problem/1711
//  알고리즘 분류: 브루트포스 알고리즘, 기하학, 피타고라스 정리

import Shared

public struct BOJ1711: Solvable {
    public init() {}

    public func run() {
        solution2()
    }

    // 메모리: 69108KB, 시간: 4864ms, 코드 길이: 1011B
    private func solution1() {
        let N = Int(readLine()!)!
        var points = Array(repeating: (0, 0), count: N)
        var count = 0

        for idx in 0..<N {
            let input = readLine()!.split(separator: " ").map { Int($0)! }
            points[idx] = (input[0], input[1])
        }

        for idx1 in 0..<N {
            for idx2 in (idx1+1)..<N {
                for idx3 in (idx2+1)..<N where points[idx1].0 * (points[idx1].0 - points[idx2].0 - points[idx3].0) + points[idx1].1 * (points[idx1].1 - points[idx2].1 - points[idx3].1) == -1 * (points[idx2].0 * points[idx3].0 + points[idx2].1 * points[idx3].1) || points[idx2].0 * (points[idx2].0 - points[idx3].0 - points[idx1].0) + points[idx2].1 * (points[idx2].1 - points[idx3].1 - points[idx1].1) == -1 * (points[idx3].0 * points[idx1].0 + points[idx3].1 * points[idx1].1) || points[idx3].0 * (points[idx3].0 - points[idx1].0 - points[idx2].0) + points[idx3].1 * (points[idx3].1 - points[idx1].1 - points[idx2].1) == -1 * (points[idx1].0 * points[idx2].0 + points[idx1].1 * points[idx2].1) {
                    count += 1
                }
            }
        }

        print(count)
    }

    // 메모리: 69108KB, 시간: 2340ms, 코드 길이: 847B
    private func solution2() {
        let N = Int(readLine()!)!
        var points = Array(repeating: (0, 0), count: N)
        var count = 0

        for idx in 0..<N {
            let input = readLine()!.split(separator: " ").map { Int($0)! }
            points[idx] = (input[0], input[1])
        }

        for idx1 in 0..<N {
            for idx2 in (idx1+1)..<N {
                for idx3 in (idx2+1)..<N where pythagoras(points[idx1], points[idx2], points[idx3]) {
                    count += 1
                }
            }
        }

        print(count)

        func pythagoras(_ point1: (Int, Int), _ point2: (Int, Int), _ point3: (Int, Int)) -> Bool {
            let line1 = (point1.0-point2.0, point1.1-point2.1)
            let line2 = (point2.0-point3.0, point2.1-point3.1)
            let line3 = (point3.0-point1.0, point3.1-point1.1)

            if line1.0*line2.0+line1.1*line2.1 == 0 || line2.0*line3.0+line2.1*line3.1 == 0 || line3.0*line1.0+line3.1*line1.1 == 0 {
                return true
            }

            return false
        }
    }
}
