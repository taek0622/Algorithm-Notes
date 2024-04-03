//
//  15971.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 4/3/24.
//

//  문제 링크: https://www.acmicpc.net/problem/15971
//  알고리즘 분류: 그래프 이론, 그래프 탐색, 너비 우선 탐색, 깊이 우선 탐색

class BOJ15971: Solvable {
    func run() {
        // 메모리: 88764KB, 시간: 248ms, 코드 길이: 759B
        let NSE = readLine()!.split(separator: " ").map { Int($0)! }
        var graph = [Int: [(Int, Int)]]()
        var visited = Array(repeating: false, count: NSE[0] + 1)

        for _ in 1..<NSE[0] {
            let input = readLine()!.split(separator: " ").map { Int($0)! }
            graph[input[0], default: []].append((input[1], input[2]))
            graph[input[1], default: []].append((input[0], input[2]))
        }

        var queue = [(NSE[1], 0, 0)]
        visited[NSE[1]] = true
        var idx = 0

        while idx < queue.count {
            let (now, move, maxCost) = queue[idx]
            idx += 1

            if now == NSE[2] {
                print(move - maxCost)
                break
            }

            for (next, cost) in graph[now, default: []] where !visited[next] {
                visited[next] = true
                queue.append((next, move + cost, max(maxCost, cost)))
            }
        }
    }
}
