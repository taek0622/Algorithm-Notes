//
//  9325.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/05/02.
//

// 문제: https://www.acmicpc.net/problem/9325

class BOJ9325: Solvable {
    func run() {
        // 메모리: 69104KB, 시간: 72ms, 코드 길이: 232B
        let T = Int(readLine()!)!

        for _ in 0..<T {
            var s = Int(readLine()!)!
            let n = Int(readLine()!)!

            for _ in 0..<n {
                s += readLine()!.split(separator: " ").map { Int(String($0))! }.reduce(1, *)
            }

            print(s)
        }
    }
}
