//
//  10162.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/02/12.
//

// 문제: https://www.acmicpc.net/problem/10162

class BOJ10162: Solvable {
    func run() {
        // 메모리: 69100KB, 시간: 8ms, 코드 길이: 140B
        var T = Int(readLine()!)!

        let A = T / 300
        T %= 300

        let B = T / 60
        T %= 60

        let C = T / 10
        T %= 10

        print(T == 0 ? "\(A) \(B) \(C)" : "-1")
    }
}
