//
//  22341.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 11/3/24.
//

//  문제 링크: https://www.acmicpc.net/problem/22341
//  알고리즘 분류: 수학, 구현, 사칙연산

class BOJ22341: Solvable {
    func run() {
        // 메모리: 69104KB, 시간: 16ms, 코드 길이: 405B
        let NC = readLine()!.split(separator: " ").map { Int($0)! }
        var paper = (row: NC[0], col: NC[0])

        for _ in 0..<NC[1] {
            let XY = readLine()!.split(separator: " ").map { Int($0)! }

            if XY[0] > paper.row || XY[1] > paper.col {
                continue
            }

            if XY[0] * paper.col < XY[1] * paper.row {
                paper.col = XY[1]
            } else {
                paper.row = XY[0]
            }
        }

        print(paper.row * paper.col)
    }
}
