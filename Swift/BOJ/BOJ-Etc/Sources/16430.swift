//
//  16430.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/03/23.
//

// 문제: https://www.acmicpc.net/problem/16430

class BOJ16430: Solvable {
    func run() {
        solution3()
    }

    // 메모리: 69112KB, 시간: 8ms, 코드 길이: 406B
    private func solution1() {
        let input = readLine()!.split(separator: " ").map { Int(String($0))! }
        let A = input[1] - input[0]
        let B = input[1]
        var divisors = Set<Int>()

        var divisor = 1

        while divisor * divisor <= A {
            if A % divisor == 0 {
                divisors.insert(divisor)
            }

            divisor += 1
        }

        for number in divisors.sorted().reversed() {
            if B % number == 0 {
                print(A / number, B / number)
                break
            }
        }
    }

    
    // 메모리: 69104KB, 시간: 8ms, 코드 길이: 403B
    private func solution2() {
        let input = readLine()!.split(separator: " ").map { Int(String($0))! }
        let divisor = generateDivisor(input[1] - input[0], input[1])

        print((input[1] - input[0]) / divisor, input[1] / divisor)

        func generateDivisor(_ baseNumber: Int, _ targetNumber: Int) -> Int {
            if targetNumber % baseNumber == 0 {
                return baseNumber
            }

            return generateDivisor(targetNumber % baseNumber, baseNumber)
        }
    }

    // 메모리: 69104KB, 시간: 8ms, 코드 길이: 108B
    // 문제에서 서로소가 보장된다고 했기 때문에 solution3이 정답!
    private func solution3() {
        let input = readLine()!.split(separator: " ").map { Int(String($0))! }

        print(input[1] - input[0], input[1])
    }
}
