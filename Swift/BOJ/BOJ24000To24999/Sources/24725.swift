//
//  24725.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 4/27/25.
//

//  문제 링크: https://www.acmicpc.net/problem/24725
//  알고리즘 분류: 구현, 문자열, 브루트포스 알고리즘

class BOJ24725: Solvable {
    func run() {
        // 메모리: 70040KB, 시간: 24ms, 코드 길이: 1962B
        let NM = readLine()!.split(separator: " ").map { Int($0)! }
        var mbti = [[String]]()
        var board = Array(repeating: Array(repeating: "", count: NM[1]), count: NM[0])
        var start = [(Int, Int)]()
        var idx = 0
        var count = 0

        for first in ["E", "I"] {
            for second in ["N", "S"] {
                for third in ["F", "T"] {
                    for last in ["P", "J"] {
                        mbti.append([first, second, third, last])
                    }
                }
            }
        }

        for row in 0..<NM[0] {
            board[row] = readLine()!.map { String($0) }

            for col in 0..<NM[1] where board[row][col] == "I" || board[row][col] == "E" {
                start.append((row, col))
            }
        }

        while idx < start.count {
            let (row, col) = start[idx]
            idx += 1

            if row-3 >= 0 {
                if col-3 >= 0 && mbti.contains([board[row][col], board[row-1][col-1], board[row-2][col-2], board[row-3][col-3]]) {
                    count += 1
                }

                if col+3 < NM[1] && mbti.contains([board[row][col], board[row-1][col+1], board[row-2][col+2], board[row-3][col+3]]) {
                    count += 1
                }

                if mbti.contains([board[row][col], board[row-1][col], board[row-2][col], board[row-3][col]]) {
                    count += 1
                }
            }

            if row+3 < NM[0] {
                if col-3 >= 0 && mbti.contains([board[row][col], board[row+1][col-1], board[row+2][col-2], board[row+3][col-3]]) {
                    count += 1
                }

                if col+3 < NM[1] && mbti.contains([board[row][col], board[row+1][col+1], board[row+2][col+2], board[row+3][col+3]]) {
                    count += 1
                }

                if mbti.contains([board[row][col], board[row+1][col], board[row+2][col], board[row+3][col]]) {
                    count += 1
                }
            }

            if col-3 >= 0 && mbti.contains([board[row][col], board[row][col-1], board[row][col-2], board[row][col-3]]) {
                count += 1
            }

            if col+3 < NM[1] && mbti.contains([board[row][col], board[row][col+1], board[row][col+2], board[row][col+3]]) {
                count += 1
            }
        }

        print(count)
    }
}
