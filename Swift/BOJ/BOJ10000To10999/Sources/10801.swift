//
//  10801.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 7/6/24.
//

//  문제 링크: https://www.acmicpc.net/problem/10801
//  알고리즘 분류: 구현

class BOJ10801: Solvable {
    func run() {
        // 메모리: 69104KB, 시간: 8ms, 코드 길이: 337B
        let A = readLine()!.split(separator: " ").map { Int($0)! }
        let B = readLine()!.split(separator: " ").map { Int($0)! }
        var score = (A: 0, B: 0)

        for idx in 0..<10 {
            if A[idx] > B[idx] {
                score.A += 1
            } else if A[idx] < B[idx] {
                score.B += 1
            }
        }

        print(score.A == score.B ? "D" : (score.A > score.B ? "A" : "B"))
    }
}
