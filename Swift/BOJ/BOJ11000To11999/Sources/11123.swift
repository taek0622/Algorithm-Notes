//
//  11123.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 5/13/24.
//

//  문제 링크: https://www.acmicpc.net/problem/11123
//  알고리즘 분류: 그래프 이론, 그래프 탐색, 너비 우선 탐색, 깊이 우선 탐색

class BOJ11123: Solvable {
    func run() {
        // 메모리: 69648KB, 시간: 40ms, 코드 길이: 876B
        let T = Int(readLine()!)!

        for _ in 0..<T {
            let HW = readLine()!.split(separator: " ").map { Int($0)! }
            var map = Array(repeating: Array(repeating: false, count: HW[1]), count: HW[0])
            var count = 0

            for row in 0..<HW[0] {
                map[row] = readLine()!.map { $0 == "#" }
            }

            for row in 0..<HW[0] {
                for col in 0..<HW[1] where map[row][col] {
                    var queue = [(row, col)]
                    map[row][col] = false
                    var idx = 0
                    count += 1

                    while idx < queue.count {
                        let (r, c) = queue[idx]
                        idx += 1

                        for (nr, nc) in [(r-1, c), (r, c-1), (r, c+1), (r+1, c)] where 0..<HW[0] ~= nr && 0..<HW[1] ~= nc && map[nr][nc] {
                            map[nr][nc] = false
                            queue.append((nr, nc))
                        }
                    }
                }
            }

            print(count)
        }
    }
}
