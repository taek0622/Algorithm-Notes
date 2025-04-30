//
//  17827.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/08/14.
//

// 문제: https://www.acmicpc.net/problem/17827

class BOJ17827: Solvable {
    func run() {
        // 메모리: 84688KB, 시간: 344ms, 코드 길이: 296B
        let input = readLine()!.split(separator: " ").map { Int(String($0))! }
        let N = readLine()!.split(separator: " ").map { Int(String($0))! }

        for _ in 0..<input[1] {
            let K = Int(readLine()!)!
            print(K < input[0] ? N[K] : N[(K - (input[2] - 1)) % (input[0] - (input[2] - 1)) + input[2] - 1])
        }
    }
}
