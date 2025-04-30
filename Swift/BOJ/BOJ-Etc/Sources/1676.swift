//
//  1676.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/01/22.
//

// 문제: https://www.acmicpc.net/problem/1676

class BOJ1676: Solvable {
    func run() {
        
    }

    // 메모리: 69100KB, 시간: 8ms, 코드 길이: 406B
    private func solution1() {
        let N = Int(readLine()!)!

        print(factorial(N).1)

        func factorial(_ N: Int) -> (Int, Int) {
            if N > 1 {
                let factorialResult = factorial(N-1)
                var number = N * factorialResult.0
                var count = factorialResult.1

                while number % 10 == 0 {
                    number /= 10
                    count += 1
                }

                number %= 10000

                return (number, count)
            }

            return (1, 0)
        }
    }

    // 메모리: 69100KB, 시간: 8ms, 코드 길이: 52B
    private func solution2() {
        let N = Int(readLine()!)!

        print(N/5 + N/25 + N/125)
    }
}
