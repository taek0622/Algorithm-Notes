//
//  28292.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 4/21/25.
//

//  문제 링크: https://www.acmicpc.net/problem/28292
//  알고리즘 분류: 구현, 애드 혹

class BOJ28292: Solvable {
    func run() {
        // 메모리: 69100KB, 시간: 8ms, 코드 길이: 65B
        let N = Int(readLine()!)!
        print(N > 5 ? 3 : [1, 1, 2, 2, 2][N-1])
    }
}
