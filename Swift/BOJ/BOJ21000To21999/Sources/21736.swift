//
//  21736.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 5/3/24.
//

//  문제 링크: https://www.acmicpc.net/problem/21736
//  알고리즘 분류: 그래프 이론, 그래프 탐색, 너비 우선 탐색, 깊이 우선 탐색

class BOJ21736: Solvable {
    func run() {
        // 메모리: 87456KB, 시간: 76ms, 코드 길이: 765B
        let NM = readLine()!.split(separator: " ").map { Int($0)! }
        var map = Array(repeating: Array(repeating: "", count: NM[1]), count: NM[0])
        var queue = [(Int, Int)]()
        var count = 0

        for row in 0..<NM[0] {
            map[row] = readLine()!.map { String($0) }

            for col in 0..<NM[1] where map[row][col] == "I" {
                queue.append((row, col))
                map[row][col] = "X"
            }
        }

        var idx = 0

        while idx < queue.count {
            let (row, col) = queue[idx]
            idx += 1

            for (nr, nc) in [(row-1, col), (row, col-1), (row, col+1), (row+1, col)] where 0..<NM[0] ~= nr && 0..<NM[1] ~= nc && map[nr][nc] != "X" {

                if map[nr][nc] == "P" {
                    count += 1
                }

                map[nr][nc] = "X"
                queue.append((nr, nc))
            }
        }

        print(count == 0 ? "TT" : count)
    }
}
