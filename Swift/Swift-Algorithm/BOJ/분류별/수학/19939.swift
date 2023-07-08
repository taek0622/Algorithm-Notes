//
//  19939.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/07/08.
//

// 문제: https://www.acmicpc.net/problem/19939

class BOJ19939: Solvable {
    func run() {
        // 메모리: 69104KB, 시간: 8ms, 코드 길이: 228B
        let input = readLine()!.split(separator: " ").map { Int(String($0))! }
        let (N, K) = (input[0], input[1])

        if N < (K + 1) * K / 2 {
            print(-1)
        } else if (N - (K + 1) * K / 2) % K == 0 {
            print(K - 1)
        } else {
            print(K)
        }
    }
}
