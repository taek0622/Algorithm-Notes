//
//  2581.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2022/12/30.
//

// 문제: https://www.acmicpc.net/problem/1978

class BOJ2581: Solvable {
    func run() {
        solution4()
    }

    // 메모리: 69100KB, 시간: 128ms, 코드 길이: 464B
    private func solution1() {
        let M = Int(readLine()!)!
        let N = Int(readLine()!)!
        var numbers = [Int]()

        for number in M...N {
            var divisorCount = 0
            if number > 1 {
                for divisor in 1...number/2 {
                    if number % divisor == 0 {
                        divisorCount += 1
                    }
                }

                if divisorCount == 1 {
                    numbers.append(number)
                }
            }
        }

        if numbers.isEmpty {
            print(-1)
        } else {
            print("\(numbers.reduce(0, +))\n\(numbers.min()!)")
        }
    }

    // 메모리: 69100KB, 시간: 124ms, 코드 길이: 489B
    private func solution2() {
        let M = Int(readLine()!)!
        let N = Int(readLine()!)!
        var numbers = [Int]()
        var sum = 0

        for number in M...N {
            var divisorCount = 0
            if number > 1 {
                for divisor in 1...number/2 {
                    if number % divisor == 0 {
                        divisorCount += 1
                    }
                }

                if divisorCount == 1 {
                    numbers.append(number)
                    sum += number
                }
            }
        }

        if numbers.isEmpty {
            print(-1)
        } else {
            print("\(sum)\n\(numbers.min()!)")
        }
    }

    // 메모리: 69100KB, 시간: 8ms, 코드 길이: 538B
    private func solution3() {
        let M = Int(readLine()!)!
        let N = Int(readLine()!)!
        var minNum = -1
        var sum = 0

        for number in M...N {
            if number == 1 {
                continue
            }

            var isPrimeNumber = true
            var divisor = 2

            while divisor * divisor <= number {
                if number % divisor == 0 {
                    isPrimeNumber = false
                    break
                }

                divisor += 1
            }

            if isPrimeNumber {
                if minNum == -1 {
                    minNum = number
                }

                sum += number
            }
        }

        print(minNum != -1 ? "\(sum)\n\(minNum)" : "\(minNum)")
    }

    // 메모리: 69100KB, 시간: 8ms, 코드 길이: 500B
    private func solution4() {
        let M = Int(readLine()!)!
        let N = Int(readLine()!)!
        var numbers = Array(0...10000)
        var minNum = -1
        var sum = 0

        for idx in 0...numbers.count {
            if idx <= 1 {
                numbers[idx] = 0
                continue
            }

            for divisor in stride(from: idx * 2, through: 10000, by: idx) {
                numbers[divisor] = 0
            }
        }

        for number in M...N {
            sum += numbers[number]

            if minNum == -1 && numbers[number] != 0 {
                minNum = number
            }
        }

        print(minNum != -1 ? "\(sum)\n\(minNum)" : "\(minNum)")
    }
}
