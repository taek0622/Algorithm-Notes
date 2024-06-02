//
//  2440.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 6/2/24.
//

//  문제 링크: https://www.acmicpc.net/problem/2440
//  알고리즘 분류: 구현

class BOJ2440: Solvable {
    func run() {
        // 메모리: 69100KB, 시간: 8ms, 코드 길이: 118B
        var N = Int(readLine()!)!

        for idx in stride(from: N, to: 0, by: -1) {
            print(String(repeating: "*", count: idx))
        }
    }
}
