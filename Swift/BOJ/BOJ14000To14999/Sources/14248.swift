//
//  14248.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 5/17/24.
//

//  문제 링크: https://www.acmicpc.net/problem/14248
//  알고리즘 분류: 그래프 이론, 그래프 탐색, 너비 우선 탐색, 깊이 우선 탐색

class BOJ14248: Solvable {
    func run() {
        // 메모리: 76856KB, 시간: 44ms, 코드 길이: 463B
        let n = Int(readLine()!)!
        let A = readLine()!.split(separator: " ").map { Int($0)! }
        let s = Int(readLine()!)! - 1
        var visited = Array(repeating: false, count: n)
        var count = 0
        var queue = [s]
        visited[s] = true
        var idx = 0

        while idx < queue.count {
            let now = queue[idx]
            idx += 1

            count += 1

            for next in [now-A[now], now+A[now]] where 0..<n ~= next && !visited[next] {
                visited[next] = true
                queue.append(next)
            }
        }

        print(count)
    }
}
