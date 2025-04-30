//
//  11060.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 4/29/24.
//

//  문제 링크: https://www.acmicpc.net/problem/11060
//  알고리즘 분류: 다이나믹 프로그래밍, 그래프 이론, 그래프 탐색, 너비 우선 탐색

class BOJ11060: Solvable {
    func run() {
        // 메모리: 69108KB, 시간: 8ms, 코드 길이: 508B
        let N = Int(readLine()!)!
        let A = readLine()!.split(separator: " ").map { Int($0)! }
        var queue = [(0, 0)]
        var idx = 0
        var visited = Array(repeating: false, count: N)
        var count = -1

        while idx < queue.count {
            let (now, move) = queue[idx]
            idx += 1

            if now == N-1 {
                count = move
                break
            }

            for next in stride(from: now+1, through: now+A[now], by: 1) where 0..<N ~= next && !visited[next] {
                visited[next] = true
                queue.append((next, move+1))
            }
        }

        print(count)
    }
}
