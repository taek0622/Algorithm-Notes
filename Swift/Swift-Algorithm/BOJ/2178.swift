//
//  2178.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/09/18.
//

//  문제 링크: https://www.acmicpc.net/problem/2178
//  알고리즘 분류: 그래프 이론, 그래프 탐색, 너비 우선 탐색

class BOJ2178: Solvable {
    func run() {
        solution3()
    }

    // 메모리: 69588KB, 시간: 48ms, 코드 길이: 646B
    private func solution1() {
        let NM = readLine()!.split(separator: " ").map { Int(String($0))! }
        var maze = Array(repeating: Array(repeating: 0, count: NM[1]), count: NM[0])
        var queue = [(0, 0, 0)]

        for idx in 0..<NM[0] {
            maze[idx] = readLine()!.map { Int(String($0))! }
        }

        while !queue.isEmpty {
            var (row, col, count) = queue.removeFirst()

            if 0..<NM[0] ~= row && 0..<NM[1] ~= col && maze[row][col] == 1 {
                count += 1
                queue.append(contentsOf: [(row-1, col, count), (row, col-1, count), (row, col+1, count), (row+1, col, count)])
                maze[row][col] = 0
            }

            if (row, col) == (NM[0]-1, NM[1]-1) {
                print(count)
                break
            }
        }
    }

    // 메모리: 69264KB, 시간: 12ms, 코드 길이: 659B
    private func solution2() {
        let NM = readLine()!.split(separator: " ").map { Int(String($0))! }
        var maze = Array(repeating: Array(repeating: 0, count: NM[1]), count: NM[0])
        var visited = [(0, 0)]

        for idx in 0..<NM[0] {
            maze[idx] = readLine()!.map { Int(String($0))! }
        }

        while !visited.isEmpty {
            let path = visited.removeFirst()

            for next in [(0, -1), (0, 1), (-1, 0), (1, 0)] {
                let (nextX, nextY) = (path.0 + next.0, path.1 + next.1)

                if 0..<NM[0] ~= nextX && 0..<NM[1] ~= nextY && maze[nextX][nextY] == 1 {
                    maze[nextX][nextY] = maze[path.0][path.1] + 1
                    visited.append((nextX, nextY))
                }
            }
        }

        print(maze[NM[0]-1][NM[1]-1])
    }

    // 메모리: 69108KB, 시간: 12ms, 코드 길이: 576B
    private func solution3() {
        let NM = readLine()!.split(separator: " ").map { Int(String($0))! }
        var maze = (0..<NM[0]).map { _ in readLine()!.map { Int(String($0))! } }
        var visited = [(0, 0)]

        while !visited.isEmpty {
            let path = visited.removeFirst()

            for next in [(0, -1), (0, 1), (-1, 0), (1, 0)] {
                let (nextX, nextY) = (path.0 + next.0, path.1 + next.1)

                if 0..<NM[0] ~= nextX && 0..<NM[1] ~= nextY && maze[nextX][nextY] == 1 {
                    maze[nextX][nextY] = maze[path.0][path.1] + 1
                    visited.append((nextX, nextY))
                }
            }
        }

        print(maze[NM[0]-1][NM[1]-1])
    }
}
