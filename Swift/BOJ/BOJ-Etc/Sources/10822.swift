//
//  10822.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/05/29.
//

// 문제: https://www.acmicpc.net/problem/10822

class BOJ10822: Solvable {
    func run() {
        // 메모리: 69104KB, 시간: 8ms, 코드 길이: 78B
        print(readLine()!.split(separator: ",").map { Int(String($0))! }.reduce(0, +))
    }
}
