//
//  16958.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2/23/24.
//

//  문제 링크: https://www.acmicpc.net/problem/16958
//  알고리즘 분류: 그래프 이론,  브루트포스 알고리즘, 기하학, 최단 경로, 플로이드-워셜

import Shared

public struct BOJ16958: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69108KB, 시간: 16ms, 코드 길이: 1053B
        let NT = readLine()!.split(separator: " ").map { Int($0)! }
        var cities = Array(repeating: (false, 0, 0), count: NT[0])
        var teleports = Array(repeating: 1000001, count: NT[0])

        for idx in 0..<NT[0] {
            let input = readLine()!.split(separator: " ").map { Int($0)! }
            cities[idx] = (input[0] == 1, input[1], input[2])
        }

        for base in 0..<NT[0] {
            if cities[base].0 {
                teleports[base] = 0
                continue
            }

            var distance = 1000001

            for target in 0..<NT[0] where cities[target].0 {
                let current = abs(cities[base].1 - cities[target].1) + abs(cities[base].2 - cities[target].2)
                distance = min(distance, current)
            }

            teleports[base] = distance
        }

        let M = Int(readLine()!)!

        for _ in 0..<M {
            let input = readLine()!.split(separator: " ").map { Int($0)! }
            let walkDistance = abs(cities[input[0]-1].1 - cities[input[1]-1].1) + abs(cities[input[0]-1].2 - cities[input[1]-1].2)
            let teleportDistance = teleports[input[0]-1] + teleports[input[1]-1] + NT[1]

            print(min(walkDistance, teleportDistance))
        }
    }
}
