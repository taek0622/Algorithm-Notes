//
//  14940.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 1/6/24.
//

//  문제 링크: https://www.acmicpc.net/problem/14940
//  알고리즘 분류: 그래프 이론, 그래프 탐색, 너비 우선 탐색

class BOJ14940: Solvable {
    func run() {
        // 메모리: 79416KB, 시간: 144ms, 코드 길이: 874B
        let nm = readLine()!.split(separator: " ").map { Int($0)! }
        var map = Array(repeating: Array(repeating: -1, count: nm[1]), count: nm[0])
        var distance = map
        var queue = [(Int, Int)]()
        var idx = 0

        for row in 0..<nm[0] {
            map[row] = readLine()!.split(separator: " ").map { Int($0)! }

            for col in map[row].indices where map[row][col] != 1 {
                distance[row][col] = 0

                if map[row][col] == 2 {
                    queue.append((row, col))
                }
            }
        }

        while idx < queue.count {
            let (x, y) = queue[idx]
            idx += 1

            [(x-1, y), (x, y-1), (x, y+1), (x+1, y)].forEach {
                if 0..<nm[0] ~= $0.0 && 0..<nm[1] ~= $0.1 && map[$0.0][$0.1] == 1 {
                    map[$0.0][$0.1] = 0
                    distance[$0.0][$0.1] = distance[x][y] + 1
                    queue.append($0)
                }
            }
        }

        distance.forEach {
            print($0.map { String($0) }.joined(separator: " "))
        }
    }
}
