//
//  12761.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 5/12/24.
//

//  문제 링크: https://www.acmicpc.net/problem/12761
//  알고리즘 분류: 그래프 이론, 그래프 탐색, 너비 우선 탐색

class BOJ12761: Solvable {
    func run() {
        // 메모리: 72376KB, 시간: 20ms, 코드 길이: 545B
        let ABNM = readLine()!.split(separator: " ").map { Int($0)! }
        var visited = Array(repeating: false, count: 100001)
        var queue = [(ABNM[2], 0)]
        var idx = 0

        visited[ABNM[2]] = true

        while idx < queue.count {
            let (now, move) = queue[idx]
            idx += 1

            if now == ABNM[3] {
                print(move)
                break
            }

            for next in [now-1, now+1, now-ABNM[0], now+ABNM[0], now-ABNM[1], now+ABNM[1], now*ABNM[0], now*ABNM[1]] where 0...100000 ~= next && !visited[next] {
                visited[next] = true
                queue.append((next, move+1))
            }
        }
    }
}
