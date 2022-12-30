//
//  1929.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2022/12/31.
//

// 문제: https://www.acmicpc.net/problem/1929

class BOJ1929: Solvable {
    func run() {
        solution2()
    }

    // 메모리: 69104KB, 시간: 364ms, 코드 길이: 412B
    private func solution1() {
        let numbers = readLine()!.split(separator: " ").map { Int(String($0))! }

        for num in numbers[0]...numbers[1] {
            var isPrimeNumber = true
            var divisor = 2

            if num == 1 {
                continue
            }

            while divisor * divisor <= num {
                if num % divisor == 0 {
                    isPrimeNumber = false
                    break
                }

                divisor += 1
            }

            if isPrimeNumber {
                print(num)
            }
        }
    }

    private func solution2() {
        
    }
}
