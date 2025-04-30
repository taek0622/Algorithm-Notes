//
//  14445.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2/26/24.
//

//  문제 링크: https://www.acmicpc.net/problem/14445
//  알고리즘 분류: 수학, 기하학, 애드 혹

class BOJ14445: Solvable {
    func run() {
        // 메모리: 69100KB, 시간: 12ms, 코드 길이: 80B
        let N = Int(readLine()!)!
        print(N == 1 ? 0 : (N % 2 == 0 ? N / 2 : (N + 1) / 2))
    }
}
