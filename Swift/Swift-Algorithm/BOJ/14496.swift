//
//  14496.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 5/14/24.
//

//  문제 링크: https://www.acmicpc.net/problem/14496
//  알고리즘 분류: 그래프 이론, 그래프 탐색, 너비 우선 탐색

class BOJ14496: Solvable {
    func run() {
        // 메모리: 69372KB, 시간: 24ms, 코드 길이: 763B
        let ab = readLine()!.split(separator: " ").map { Int($0)! - 1 }
        let NM = readLine()!.split(separator: " ").map { Int($0)! }
        var numbers = Array(repeating: [Int](), count: NM[0])
        var visited = Array(repeating: false, count: NM[0])
        var count = -1

        for _ in 0..<NM[1] {
            let input = readLine()!.split(separator: " ").map { Int($0)! - 1 }
            numbers[input[0]].append(input[1])
            numbers[input[1]].append(input[0])
        }

        var queue = [(ab[0], 0)]
        visited[ab[0]] = true
        var idx = 0

        while idx < queue.count {
            let (now, change) = queue[idx]
            idx += 1

            if now == ab[1] {
                count = change
                break
            }

            for next in numbers[now] where !visited[next] {
                visited[next] = true
                queue.append((next, change + 1))
            }
        }

        print(count)
    }
}
