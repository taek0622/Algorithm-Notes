//
//  2508.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 1/12/25.
//

//  문제 링크: https://www.acmicpc.net/problem/2508
//  알고리즘 분류: 구현, 브루트포스 알고리즘

class BOJ2508: Solvable {
    func run() {
        // 메모리: 71800KB, 시간: 60ms, 코드 길이: 814B
        let t = Int(readLine()!)!

        for _ in 0..<t {
            _ = readLine()
            let rc = readLine()!.split(separator: " ").map { Int($0)! }
            var board = Array(repeating: Array(repeating: "", count: rc[1]), count: rc[0])
            var candies = [(Int, Int)]()
            var count = 0

            for row in 0..<rc[0] {
                board[row] = readLine()!.map { String($0) }

                for col in 0..<rc[1] where board[row][col] == "o" {
                    candies.append((row, col))
                }
            }

            for (row, col) in candies {
                if 0..<rc[0] ~= row - 1 && 0..<rc[0] ~= row + 1 && board[row - 1][col] == "v" && board[row + 1][col] == "^" {
                    count += 1
                } else if 0..<rc[1] ~= col - 1 && 0..<rc[1] ~= col + 1 && board[row][col - 1] == ">" && board[row][col + 1] == "<" {
                    count += 1
                }
            }

            print(count)
        }
    }
}
