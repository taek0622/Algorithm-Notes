//
//  1430.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2/20/24.
//

//  문제 링크: https://www.acmicpc.net/problem/1430
//  알고리즘 분류: 수학, 그래프 이론, 그래프 탐색, 기하학, 너비 우선 탐색

import Foundation

import Shared

public struct BOJ1430: Solvable {
    public init() {}

    public func run() {
        // 메모리: 79520KB, 시간: 12ms, 코드 길이: 1009B
        let NRDXY = readLine()!.split(separator: " ").map { Int($0)! }
        var towers = [(Int, Int)]()
        var maxDamage = 0.0

        for _ in 0..<NRDXY[0] {
            let tower = readLine()!.split(separator: " ").map { Int($0)! }
            towers.append((tower[0], tower[1]))
        }

        var queue = [(NRDXY[3], NRDXY[4], 0)]
        var queueIdx = 0

        while queueIdx < queue.count {
            let (x, y, turn) = queue[queueIdx]
            queueIdx += 1

            var nearTower = [(Int, Int)]()
            var willRemove = [Int]()

            if turn > 0 {
                maxDamage += Double(NRDXY[2]) / pow(2, Double(turn - 1))
            }

            for idx in towers.indices where (x - towers[idx].0) * (x - towers[idx].0) + (y - towers[idx].1) * (y - towers[idx].1) <= NRDXY[1] * NRDXY[1] {
                nearTower.append(towers[idx])
                willRemove.append(idx)
            }

            for removeIdx in willRemove.sorted(by: >) {
                towers.remove(at: removeIdx)
            }

            for tower in nearTower {
                queue.append((tower.0, tower.1, turn + 1))
            }
        }

        print(String(format: "%.2f", maxDamage))
    }
}
