//
//  25418.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 5/16/24.
//

//  문제 링크: https://www.acmicpc.net/problem/25418
//  알고리즘 분류: 다이나믹 프로그래밍, 그래프 이론, 그래프 탐색, 너비 우선 탐색

import Shared

public struct BOJ25418: Solvable {
    public init() {}

    public func run() {
        solution2()
    }

    // 메모리: 95048KB, 시간: 76ms, 코드 길이: 460B
    private func solution1() {
        let AK = readLine()!.split(separator: " ").map { Int($0)! }
        var visited = Array(repeating: false, count: AK[1] + 1)
        var queue = [(AK[0], 0)]
        visited[AK[0]] = true
        var idx = 0

        while idx < queue.count {
            let (now, move) = queue[idx]
            idx += 1

            if now == AK[1] {
                print(move)
                break
            }

            for next in [now+1, now*2] where 0...AK[1] ~= next && !visited[next] {
                visited[next] = true
                queue.append((next, move+1))
            }
        }
    }

    // 메모리: 69104KB, 시간: 12ms, 코드 길이: 264B
    private func solution2() {
        var AK = readLine()!.split(separator: " ").map { Int($0)! }
        var count = 0

        while AK[0] != AK[1] {
            if AK[1] % 2 == 1 {
                AK[1] -= 1
            } else if AK[1] / 2 >= AK[0] {
                AK[1] /= 2
            } else {
                AK[1] -= 1
            }

            count += 1
        }

        print(count)
    }
}
