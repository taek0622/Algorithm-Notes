//
//  2669.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2/18/25.
//

//  문제 링크: https://www.acmicpc.net/problem/2669
//  알고리즘 분류: 구현

class BOJ2669: Solvable {
    func run() {
        // 메모리: 69104KB, 시간: 8ms, 코드 길이: 368B
        var board = Array(repeating: Array(repeating: false, count: 100), count: 100)
        var count = 0

        for _ in 0..<4 {
            let coord = readLine()!.split(separator: " ").map { Int($0)! }

            for row in coord[0]..<coord[2] {
                for col in coord[1]..<coord[3] where !board[row][col] {
                    count += 1
                    board[row][col] = true
                }
            }
        }

        print(count)
    }
}
