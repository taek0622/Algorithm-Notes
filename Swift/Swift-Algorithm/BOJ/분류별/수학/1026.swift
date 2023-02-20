//
//  1026.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/02/20.
//

// 문제: https://www.acmicpc.net/problem/1026

class BOJ1026: Solvable {
    func run() {
        // 메모리: 69112KB, 시간: 8ms, 코드 길이: 256B
        let N = Int(readLine()!)!
        var A = readLine()!.split(separator: " ").map { Int(String($0))! }.sorted(by: <)
        let B = readLine()!.split(separator: " ").map { Int(String($0))! }.sorted(by: >)
        var S = 0

        for idx in 0..<N {
            S += (A[idx] * B[idx])
        }

        print(S)
    }
}
