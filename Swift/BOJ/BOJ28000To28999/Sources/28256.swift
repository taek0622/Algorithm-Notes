//
//  28256.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 4/1/25.
//

//  문제 링크: https://www.acmicpc.net/problem/28256
//  알고리즘 분류: 구현, 그래프 이론, 문자열, 그래프 탐색, 정렬

class BOJ28256: Solvable {
    func run() {
        // 메모리: 69112KB, 시간: 8ms, 코드 길이: 967B
        let T = Int(readLine()!)!

        for _ in 0..<T {
            var box = Array(repeating: Array(repeating: false, count: 3), count: 3)
            var a = [Int]()

            for row in 0..<3 {
                box[row] = readLine()!.map { $0 == "O" }
            }

            for row in 0..<3 {
                for col in 0..<3 where box[row][col] {
                    var queue = [(row, col)]
                    box[row][col] = false
                    var idx = 0
                    var count = 0

                    while idx < queue.count {
                        var (r, c) = queue[idx]
                        count += 1

                        for (nr, nc) in [(r-1, c), (r, c-1), (r, c+1), (r+1, c)] where 0..<3 ~= nr && 0..<3 ~= nc && box[nr][nc] {
                            queue.append((nr, nc))
                            box[nr][nc] = false
                        }

                        idx += 1
                    }

                    a.append(count)
                }
            }

            a.sort()

            let na = readLine()!.split(separator: " ").map { Int($0)! }
            print(a.count == na[0] && a == Array(na[1...]) ? 1 : 0)
        }
    }
}
