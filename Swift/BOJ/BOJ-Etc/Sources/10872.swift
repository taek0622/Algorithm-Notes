//
//  10872.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/01/05.
//

// 문제: https://www.acmicpc.net/problem/10872

class BOJ10872: Solvable {
    func run() {
        solution3()
    }

    // 메모리: 69100KB, 시간: 8ms, 코드 길이: 99B
    private func solution1() {
        var N = Int(readLine()!)!
        var result = 1

        while N > 0 {
            result *= N
            N -= 1
        }

        print(result)
    }

    // 메모리: 69100KB, 시간: 8ms, 코드 길이: 170B
    private func solution2() {
        let N = Int(readLine()!)!
        print(factorial(N))

        func factorial(_ N: Int) -> Int {
            if N == 0 {
                return 1
            } else {
                return N * factorial(N - 1)
            }
        }
    }

    // 메모리: 69100KB, 시간: 8ms, 코드 길이: 143B
    private func solution3() {
        print(factorial(Int(readLine()!)!))

        func factorial(_ N: Int) -> Int {
            if N == 0 {
                return 1
            }
            return N * factorial(N - 1)
        }
    }
}
