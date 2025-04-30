//
//  22858.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 3/27/25.
//

//  문제 링크: https://www.acmicpc.net/problem/22858
//  알고리즘 분류: 구현, 시뮬레이션

class BOJ22858: Solvable {
    func run() {
        // 메모리: 70288KB, 시간: 44ms, 코드 길이: 343B
        let NK = readLine()!.split(separator: " ").map { Int($0)! }
        var S = readLine()!.split(separator: " ").map { Int($0)! }
        let D = readLine()!.split(separator: " ").map { Int($0)! - 1 }

        for _ in 0..<NK[1] {
            var P = S

            for idx in 0..<NK[0] {
                P[D[idx]] = S[idx]
            }

            S = P
        }

        print(S.map { String($0) }.joined(separator: " "))
    }
}
