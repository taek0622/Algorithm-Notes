//
//  1929.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2022/12/31.
//

// 문제: https://www.acmicpc.net/problem/1929

class BOJ1929: Solvable {
    func run() {
        solution6()
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

    // 메모리: 76920KB, 시간: 324ms, 코드 길이: 538B
    private func solution2() {
        let input = readLine()!.split(separator: " ").map { Int(String($0))! }
        var numbers = Array(0...1000000)

        numbers[0] = 0
        numbers[1] = 0

        for idx in stride(from: 4, through: 1000000, by: 2) {
            numbers[idx] = 0
        }

        for idx in stride(from: 3, through: 1000000, by: 2) {
            for divisor in stride(from: 3, through: 1000, by: 2) {
                if numbers[idx] % divisor == 0 && idx != divisor {
                    numbers[idx] = 0
                    break
                }
            }
        }

        for idx in input[0]...input[1] {
            if numbers[idx] != 0 {
                print(idx)
            }
        }
    }

    // 메모리: 76920KB, 시간: 256ms, 코드 길이: 398B
    private func solution3() {
        let input = readLine()!.split(separator: " ").map { Int(String($0))! }
        var numbers = Array(0...1000000)

        for idx in 0..<numbers.count {
            if idx <= 1 {
                numbers[idx] = 0
                continue
            }

            for num in stride(from: idx * 2, through: 1000000, by: idx) {
                numbers[num] = 0
            }
        }

        for idx in input[0]...input[1] {
            if numbers[idx] != 0 {
                print(numbers[idx])
            }
        }
    }

    // 메모리: 70084KB, 시간: 88ms, 코드 길이: 427B
    private func solution4() {
        let input = readLine()!.split(separator: " ").map { Int(String($0))! }
        var numbers = Array(repeating: true, count: 1000001)

        numbers[0] = false
        numbers[1] = false

        for idx in 2..<numbers.count {
            if !numbers[idx] {
                continue
            }

            for num in stride(from: idx * 2, through: 1000000, by: idx) {
                numbers[num] = false
            }
        }

        for idx in input[0]...input[1] {
            if numbers[idx] {
                print(idx)
            }
        }
    }

    // 메모리: 78672KB, 시간: 60ms, 코드 길이: 410B
    private func solution5() {
        let input = readLine()!.split(separator: " ").map { Int(String($0))! }
        var numbers = Array(0...(input[1] + 1))

        numbers[0] = -1
        numbers[1] = -1

        for idx in 2..<numbers.count {
            if numbers[idx] == -1 {
                continue
            }

            for num in stride(from: idx * 2, through: input[1], by: idx) {
                numbers[num] = -1
            }
        }

        print(numbers[input[0]...input[1]].filter { $0 != -1 }.map {"\($0)\n"}.joined())
    }

    // 메모리: 71076KB, 시간: 40ms, 코드 길이: 433B
    private func solution6() {
        let input = readLine()!.split(separator: " ").map { Int(String($0))! }
        var numbers = Array(repeating: true, count: 1000001)
        var result = ""

        numbers[0] = false
        numbers[1] = false

        for idx in 2...1000 where numbers[idx] {
            for num in stride(from: idx * idx, through: 1000000, by: idx) {
                numbers[num] = false
            }
        }

        for idx in input[0]...input[1] {
            if numbers[idx] {
                result += "\(idx)\n"
            }
        }

        print(result)
    }
}
