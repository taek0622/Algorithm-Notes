//
//  17204.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 5/18/24.
//

//  문제 링크: https://www.acmicpc.net/problem/17204
//  알고리즘 분류: 구현, 그래프 이론, 그래프 탐색

class BOJ17204: Solvable {
    func run() {
        // 메모리: 69108KB, 시간: 8ms, 코드 길이: 563B
        let NK = readLine()!.split(separator: " ").map { Int($0)! }
        var numbers = Array(repeating: 0, count: NK[0])
        var visited = Array(repeating: false, count: NK[0])
        var count = -1

        for num in 0..<NK[0] {
            numbers[num] = Int(readLine()!)!
        }

        var queue = [(0, 0)]
        visited[0] = true
        var idx = 0

        while idx < queue.count {
            let (now, move) = queue[idx]
            idx += 1

            if now == NK[1] {
                count = move
                break
            }

            if !visited[numbers[now]] {
                visited[numbers[now]] = true
                queue.append((numbers[now], move+1))
            }
        }

        print(count)
    }
}
