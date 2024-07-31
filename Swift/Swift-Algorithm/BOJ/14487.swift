//
//  14487.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 7/31/24.
//

//  문제 링크: https://www.acmicpc.net/problem/14487
//  알고리즘 분류: 구현, 그리디 알고리즘

class BOJ14487: Solvable {
    func run() {
        // 메모리: 72528KB, 시간: 28ms, 코드 길이: 106B
        _ = readLine()
        let v = readLine()!.split(separator: " ").map { Int($0)! }
        print(v.reduce(0, +) - v.max()!)
    }
}
