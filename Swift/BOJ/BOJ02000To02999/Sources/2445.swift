//
//  2445.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 6/3/24.
//

//  문제 링크: https://www.acmicpc.net/problem/2445
//  알고리즘 분류: 구현

class BOJ2445: Solvable {
    func run() {
        // 메모리: 69100KB, 시간: 12ms, 코드 길이: 350B
        let N = Int(readLine()!)!

        for idx in 1..<N {
            print(String(repeating: "*", count: idx) + String(repeating: " ", count: (N-idx) * 2) + String(repeating: "*", count: idx))
        }

        for idx in stride(from: N, to: 0, by: -1) {
            print(String(repeating: "*", count: idx) + String(repeating: " ", count: (N-idx) * 2) + String(repeating: "*", count: idx))
        }
    }
}
