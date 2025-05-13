//
//  1953.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 4/18/24.
//

//  문제 링크: https://www.acmicpc.net/problem/1953
//  알고리즘 분류: 그래프 이론, 그래프 탐색, 너비 우선 탐색, 깊이 우선 탐색, 이분 그래프

import Shared

public struct BOJ1953: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69112KB, 시간: 12ms, 코드 길이: 1026B
        let n = Int(readLine()!)!
        var graph = [Int: [Int]]()
        var team = Array(repeating: -1, count: n)

        for idx in 0..<n {
            let input = readLine()!.split(separator: " ").map { Int($0)! - 1 }

            for hate in input[1...] {
                graph[idx, default: []].append(hate)
            }
        }

        for num in 0..<n where team[num] == -1 {
            var queue = [num]
            team[num] = 0
            var idx = 0

            while idx < queue.count {
                let now = queue[idx]
                idx += 1

                for next in graph[now, default: []] where team[next] == -1 {
                    queue.append(next)
                    team[next] = (team[now] + 1) % 2
                }
            }
        }

        let blue = team.enumerated().filter { $0.element == 0 }.map { String($0.offset + 1) }
        let white = team.enumerated().filter { $0.element == 1 }.map { String($0.offset + 1) }

        if white.count == 0 {
            print("\(blue.count - 1)\n\(blue[0..<blue.count-1].joined(separator: " "))\n\(1)\n\(blue.last!)")
        } else {
            print("\(blue.count)\n\(blue.joined(separator: " "))\n\(white.count)\n\(white.joined(separator: " "))")
        }
    }
}
