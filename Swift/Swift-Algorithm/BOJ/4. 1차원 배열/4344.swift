//
//  4344.swift
//  Swift
//
//  Created by 김민택 on 2022/06/01.
//

// 문제: https://www.acmicpc.net/problem/4344

class BOJ4344: Solvable {
    func run() {
        solution3()
    }

    // 메모리: 79512KB, 시간: 16ms, 코드 길이: 491B
    private func solution1() {
        let input = Int(readLine()!)!

        for _ in 0..<input {
            let score = readLine()!.split(separator: " ").map { Int(String($0))! }
            var sum = 0
            for i in 1...score[0] {
                sum += score[i]
            }
            let average = sum / score[0]
            var cnt = 0
            for i in 1...score[0] {
                if score[i] > average {
                    cnt += 1
                }
            }
            let ratio = Double(cnt) / Double(score[0]) * 100
            let result = String(format: "%.3f", ratio)
            print("\(result)%")
        }
    }

    // 메모리: 79512KB, 시간: 16ms, 코드 길이: 484B
    private func solution2() {
        let C = Int(readLine()!)!

        for _ in 0..<C {
            let input = readLine()!.split(separator: " ").map { Int(String($0))! }
            var sum = 0
            var count = 0

            for idx in 1..<input.count {
                sum += input[idx]
            }

            let average = sum / input[0]

            for idx in 1..<input.count {
                if input[idx] > average {
                    count += 1
                }
            }

            let ratio = Double(count) / Double(input[0]) * 100

            print("\(String(format: "%.3f", ratio))%")
        }
    }

    // 메모리: 79512KB, 시간: 16ms, 코드 길이: 442B
    private func solution3() {
        let C = Int(readLine()!)!

        for _ in 0..<C {
            let score = readLine()!.split(separator: " ").map { Int(String($0))! }
            var count = 0

            let sum = score.reduce(0, +) - score[0]
            let average = sum / score[0]

            for idx in 1...score[0] {
                if score[idx] > average {
                    count += 1
                }
            }

            let ratio = Double(count) / Double(score[0]) * 100
            print("\(String(format: "%.3f", ratio))%")
        }
    }
}
