//
//  9020.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/01/01.
//

// 문제: https://www.acmicpc.net/problem/9020

class BOJ9020: Solvable {
    func run() {
        let maxNum = 10000
        var numbers = [false, false] + Array(repeating: true, count: maxNum - 1)

        for idx in 2...maxNum where !((idx * idx) > maxNum) && numbers[idx] {
            for num in idx...maxNum/idx {
                numbers[idx * num] = false
            }
        }

        let T = Int(readLine()!)!

        for _ in 0..<T {
            let n = Int(readLine()!)!
            let num = n / 2

            let result = checkGoldbachPartition(num, num)

            print(result.0, result.1)
        }

        func checkGoldbachPartition(_ num1: Int, _ num2: Int) -> (Int, Int) {
            if numbers[num1] && numbers[num2] {
                return (num1, num2)
            } else {
                return checkGoldbachPartition(num1 - 1, num2 + 1)
            }
        }
    }
}
