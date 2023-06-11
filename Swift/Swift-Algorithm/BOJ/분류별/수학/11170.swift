//
//  11170.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/06/11.
//

// 문제: https://www.acmicpc.net/problem/11170

class BOJ11170: Solvable {
    func run() {
        solution2()
    }

    // 메모리: 69104KB, 시간: 1880ms, 코드 길이: 313B
    private func solution1() {
        let T = Int(readLine()!)!

        for _ in 0..<T {
            let NM = readLine()!.split(separator: " ").map { Int(String($0))! }
            var count = 0

            for number in NM[0]...NM[1] {
                for slice in String(number) {
                    if slice == "0" {
                        count += 1
                    }
                }
            }

            print(count)
        }
    }

    // 메모리: 69104KB, 시간: 80ms, 코드 길이: 427B
    private func solution2() {
        let T = Int(readLine()!)!

        (0..<T).forEach { _ in
            let input = readLine()!.split(separator: " ").map { Int(String($0))! }
            var count = 0

            (input[0]...input[1]).forEach {
                var number = $0

                if number == 0 {
                    count += 1
                }

                while number > 0 {
                    if number % 10 == 0 {
                        count += 1
                    }

                    number /= 10
                }
            }

            print(count)
        }
    }

    // 메모리: 69104KB, 시간: 84ms, 코드 길이: 449B
    private func solution3() {
        let T = Int(readLine()!)!

        for _ in 0..<T {
            let input = readLine()!.split(separator: " ").map { Int(String($0))! }
            var count = 0

            for number in input[0]...input[1] {
                var tempNumber = number

                if tempNumber == 0 {
                    count += 1
                }

                while tempNumber > 0 {
                    if tempNumber % 10 == 0 {
                        count += 1
                    }

                    tempNumber /= 10
                }
            }

            print(count)
        }
    }

    // 메모리: 76920KB, 시간: 40ms, 코드 길이: 480B
    private func solution4() {
        var counter = Array(repeating: 0, count: 1000002)
        counter[1] = 1

        for idx in 2...counter.count - 1 {
            var count = 0
            var number = idx - 1

            while number > 0 {
                if number % 10 == 0 {
                    count += 1
                }

                number /= 10
            }

            counter[idx] = counter[idx - 1] + count
        }

        let T = Int(readLine()!)!

        for _ in 0..<T {
            let input = readLine()!.split(separator: " ").map { Int(String($0))! }
            print(counter[input[1] + 1] - counter[input[0]])
        }
    }
}
