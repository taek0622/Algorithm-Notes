//
//  9205.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 3/20/24.
//

//  문제 링크: https://www.acmicpc.net/problem/9205
//  알고리즘 분류: 그래프 이론, 그래프 탐색, 너비 우선 탐색

class BOJ9205: Solvable {
    func run() {
        // 메모리: 69108KB, 시간: 12ms, 코드 길이: 1069B
        let T = Int(readLine()!)!

        for _ in 0..<T {
            let n = Int(readLine()!)!
            var convs = Array(repeating: (0, 0), count: n)
            var visited = Array(repeating: false, count: n)
            var isHappy = false

            let tempHome = readLine()!.split(separator: " ").map { Int($0)! }
            let home = (tempHome[0], tempHome[1])

            for idx in 0..<n {
                let conv = readLine()!.split(separator: " ").map { Int($0)! }
                convs[idx] = (conv[0], conv[1])
            }

            let tempFestival = readLine()!.split(separator: " ").map { Int($0)! }
            let festival = (tempFestival[0], tempFestival[1])

            var queue = [home]
            var idx = 0

            while idx < queue.count {
                let (x, y) = queue[idx]
                idx += 1

                if abs(festival.0 - x) + abs(festival.1 - y) <= 1000 {
                    isHappy = true
                    break
                }

                for idx in 0..<n where !visited[idx] && abs(convs[idx].0 - x) + abs(convs[idx].1 - y) <= 1000 {
                    visited[idx] = true
                    queue.append((convs[idx].0, convs[idx].1))
                }
            }

            print(isHappy ? "happy" : "sad")
        }
    }
}
