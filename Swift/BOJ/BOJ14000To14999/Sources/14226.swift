//
//  14226.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 3/22/24.
//

//  문제 링크: https://www.acmicpc.net/problem/14226
//  알고리즘 분류: 다이나믹 프로그래밍, 그래프 이론, 그래프 탐색, 너비 우선 탐색

class BOJ14226: Solvable {
    func run() {
        // 메모리: 73608KB, 시간: 12ms, 코드 길이: 623B
        let S = Int(readLine()!)!
        var visited = Array(repeating: Array(repeating: false, count: S * 2 + 1), count: S * 2 + 1)
        var queue = [(1, 0, 0)]
        var idx = 0
        visited[1][0] = true

        while idx < queue.count {
            let (now, copy, time) = queue[idx]
            idx += 1

            if now == S {
                print(time)
                break
            }

            if now + copy == S {
                print(time + 1)
                break
            }

            [(now, now), (now+copy, copy), (now-1, copy)].forEach {
                if 1...S*2+1 ~= $0.0 && 1...S*2+1 ~= $0.1 && !visited[$0.0][$0.1] {
                    visited[$0.0][$0.1] = true
                    queue.append(($0.0, $0.1, time+1))
                }
            }
        }
    }
}
