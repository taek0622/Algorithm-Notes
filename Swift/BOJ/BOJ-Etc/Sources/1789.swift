//
//  1789.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/02/12.
//

// 문제: https://www.acmicpc.net/problem/1789

class BOJ1789: Solvable {
    func run() {
        // 메모리: 69100KB, 시간: 8ms 코드 길이: 119B
        var S = Int(readLine()!)!
        var N = 0
        var diff = 1

        while S >= 0 {
            S -= diff
            N += 1
            diff += 1
        }

        print(N - 1)
    }
}
