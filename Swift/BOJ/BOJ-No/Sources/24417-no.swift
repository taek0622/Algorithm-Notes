//
//  24417.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/08/20.
//

// 문제: https://www.acmicpc.net/problem/24417

class BOJ24417: Solvable {
    func run() {
        // 메모리: KB, 시간: ms, 코드 길이: B
        let n = Int(readLine()!)!
        var fib = [0, 1]

        for _ in 0..<n {
            fib = [fib[1] % 1000000007, fib.reduce(0, +) % 1000000007]
        }

        print(fib[0], n - 2)
    }
}
