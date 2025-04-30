//
//  18242.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 3/31/25.
//

//  문제 링크: https://www.acmicpc.net/problem/18242
//  알고리즘 분류: 구현, 애드 혹

class BOJ18242: Solvable {
    func run() {
        // 메모리: 69240KB, 시간: 8ms, 코드 길이: 858B
        let NM = readLine()!.split(separator: " ").map { Int($0)! }
        var board = Array(repeating: Array(repeating: "", count: NM[1]), count: NM[0])
        var rowCount = Array(repeating: 0, count: NM[0])
        var colCount = Array(repeating: 0, count: NM[1])
        var answer = ""

        for row in 0..<NM[0] {
            board[row] = readLine()!.map { String($0) }

            for char in board[row] where char == "#" {
                rowCount[row] += 1
            }
        }

        for col in 0..<NM[1] {
            for row in 0..<NM[0] where board[row][col] == "#" {
                colCount[col] += 1
            }
        }

        if rowCount.filter { $0 == 1 }.count == 1 {
            let col = colCount.enumerated().filter { $0.element > 2 }.map { $0.element }
            answer = col.min()! == col[0] ? "LEFT" : "RIGHT"
        } else {
            let row = rowCount.enumerated().filter { $0.element > 2 }.map { $0.element }
            answer = row.min()! == row[0] ? "UP" : "DOWN"
        }

        print(answer)
    }
}
