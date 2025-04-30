//
//  24416.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/03/07.
//

// 문제: https://www.acmicpc.net/problem/24416

class BOJ24416: Solvable {
    func run() {
        solution2()
    }

    // 메모리: 69100KB, 시간: 372ms, 코드 길이: 318B
    private func solution1() {
        let n = Int(readLine()!)!

        print(fib(n), fibonacci(n))

        func fib(_ n:  Int) -> Int {
            if n == 1 || n == 2 {
                return 1
            }

            return fib(n - 1) + fib(n - 2)
        }

        func fibonacci(_ n: Int) -> Int {
            var fibonacciCount = 0

            for _ in 2..<n {
                fibonacciCount += 1
            }

            return fibonacciCount
        }
    }

    // 메모리: 69100KB, 시간: 8ms, 코드 길이: 123B
    private func solution2() {
        let n = Int(readLine()!)!
        var f = [0, 1, 1]

        for idx in 3...n {
            f.append(f[idx - 1] + f[idx - 2])
        }

        print(f[n], n - 2)
    }
}
