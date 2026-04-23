//
//  2629.swift
//  BOJ02000To02999
//
//  Created by 김이안 on 4/23/26.
//

//  문제 링크: https://www.acmicpc.net/problem/2628
//  알고리즘 분류: 다이나믹 프로그래밍, 배낭 문제

import Shared

public struct BOJ2629: Solvable {
    public init() {}

    public func run() {
        solution2()
    }

    // 메모리: 69108KB, 시간: 8ms, 코드 길이: 500B
    private func solution1() {
        _ = readLine()
        let weights = readLine()!.split(separator: " ").map { Int($0)! }
        _ = readLine()
        let beads = readLine()!.split(separator: " ").map { Int($0)! }
        var availableBead = Set<Int>()
        availableBead.insert(0)

        for weight in weights {
            var update = availableBead

            for bead in availableBead {
                update.insert(bead + weight)
                update.insert(abs(bead - weight))
            }

            availableBead = update
        }

        print(beads.map { availableBead.contains($0) ? "Y" : "N" }.joined(separator: " "))
    }

    // 메모리: 69108KB, 시간: 8ms, 코드 길이: 540B
    private func solution2() {
        _ = readLine()
        let weights = readLine()!.split(separator: " ").map { Int($0)! }
        _ = readLine()
        let beads = readLine()!.split(separator: " ").map { Int($0)! }
        var availableBead = Array(repeating: false, count: 40001)
        availableBead[0] = true

        for weight in weights {
            var update = availableBead

            for bead in 0..<15001 where availableBead[bead] {
                update[bead + weight] = true
                update[abs(bead - weight)] = true
            }

            availableBead = update
        }

        print(beads.map { availableBead[$0] ? "Y" : "N" }.joined(separator: " "))
    }

    // 메모리: 69108KB, 시간: 8ms, 코드 길이: 554B
    private func solution3() {
        _ = readLine()
        let weights = readLine()!.split(separator: " ").map { Int($0)! }
        _ = readLine()
        let beads = readLine()!.split(separator: " ").map { Int($0)! }
        var availableBead = Array(repeating: false, count: 15001)
        availableBead[0] = true

        for weight in weights {
            var update = availableBead

            for bead in 0..<15001 where availableBead[bead] {
                update[bead + weight] = true
                update[abs(bead - weight)] = true
            }

            availableBead = update
        }

        print(beads.map { $0 < 15001 && availableBead[$0] ? "Y" : "N" }.joined(separator: " "))
    }
}
