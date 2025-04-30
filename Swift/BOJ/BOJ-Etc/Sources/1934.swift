//
//  1934.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/01/12.
//

// 문제: https://www.acmicpc.net/problem/1934

class BOJ1934: Solvable {
    func run() {
        // 메모리: 69104KB, 시간: 12ms, 코드 길이: 324B
        let T = Int(readLine()!)!

        for _ in 0..<T {
            let numbers = readLine()!.split(separator: " ").map { Int(String($0))! }

            print("\(numbers[0] * numbers[1] / findDivisor(numbers[0], numbers[1]))")
        }

        func findDivisor(_ num1: Int, _ num2: Int) -> Int {
            return num1 % num2 == 0 ? num2 : findDivisor(num2, num1 % num2)
        }
    }
}
