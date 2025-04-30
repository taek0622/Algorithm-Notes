//
//  12759.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 1/17/25.
//

//  문제 링크: https://www.acmicpc.net/problem/12759
//  알고리즘 분류: 구현, 시뮬레이션, 많은 조건 분기

class BOJ12759: Solvable {
    func run() {
        // 메모리: 69108KB, 시간: 8ms, 코드 길이: 1011B
        let front = Int(readLine()!)!
        var board = Array(repeating: Array(repeating: 0, count: 3), count: 3)
        var winner = 0

        for idx in 0..<9 {
            let rc = readLine()!.split(separator: " ").map { Int($0)! - 1 }
            board[rc[0]][rc[1]] = idx % 2 == 0 ? front : 3 - front

            if (board[0][0] != 0 && board[0][0] == board[0][1] && board[0][0] == board[0][2]) || (board[1][0] != 0 && board[1][0] == board[1][1] && board[1][0] == board[1][2]) || (board[2][0] != 0 && board[2][0] == board[2][1] && board[2][0] == board[2][2]) || (board[0][0] != 0 && board[0][0] == board[1][0] && board[0][0] == board[2][0]) || (board[0][1] != 0 && board[0][1] == board[1][1] && board[0][1] == board[2][1]) || (board[0][2] != 0 && board[0][2] == board[1][2] && board[0][2] == board[2][2]) || (board[0][0] != 0 && board[0][0] == board[1][1] && board[0][0] == board[2][2]) || (board[0][2] != 0 && board[0][2] == board[1][1] && board[0][2] == board[2][0]) {
                winner = idx % 2 == 0 ? front : 3 - front
                break
            }
        }

        print(winner)
    }
}
