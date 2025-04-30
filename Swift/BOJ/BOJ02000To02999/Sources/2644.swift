//
//  2644.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 11/11/23.
//

//  문제 링크: https://www.acmicpc.net/problem/2644
//  알고리즘 분류: 그래프 이론, 그래프 탐색, 너비 우선 탐색, 깊이 우선 탐색

class BOJ2644: Solvable {
    func run() {
        // 메모리: 69112KB, 시간: 8ms, 코드 길이: 713B
        _ = Int(readLine()!)!
        let target = readLine()!.split(separator: " ").map { Int(String($0))! }
        let m = Int(readLine()!)!
        var graph = [Int: [Int]]()
        var result = -1

        for _ in 0..<m {
            let xy = readLine()!.split(separator: " ").map { Int(String($0))! }
            graph[xy[0], default: []].append(xy[1])
            graph[xy[1], default: []].append(xy[0])
        }

        var queue = [(target[0], 0)]
        var visited: Set<Int> = [target[0]]

        while !queue.isEmpty {
            let current = queue.removeFirst()

            for next in graph[current.0, default: []] where visited.insert(next).inserted {
                queue.append((next, current.1+1))

                if next == target[1] {
                    result = current.1+1
                    break
                }
            }
        }

        print(result)
    }
}
