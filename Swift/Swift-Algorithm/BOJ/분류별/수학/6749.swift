//
//  6749.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/04/28.
//

// 문제: https://www.acmicpc.net/problem/6749

class BOJ6749: Solvable {
    func run() {
        // 메모리: 69100KB, 시간: 8ms, 코드 길이: 69B
        let Y = Int(readLine()!)!
        let M = Int(readLine()!)!

        print(M + M - Y)
    }
}
