//
//  10250.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2022/12/27.
//

// 문제: https://www.acmicpc.net/problem/2869

class BOJ10250: Solvable {
    func run() {
        solution3()
    }

    // 메모리: 69104KB, 시간: 12ms, 코드 길이: 338B
    private func solution1() {
        let T = Int(readLine()!)!

        for _ in 0..<T {
            let input = readLine()!.split(separator: " ").map { Int(String($0))! }

            let H = input[0]
            let W = input[1]
            let N = input[2]

            let floor = (N % H != 0) ? N % H : H
            let line = (N % H != 0) ? N / H + 1 : N / H

            print(line >= 10 ? "\(floor)\(line)" : "\(floor)0\(line)")
        }
    }

    // 메모리: 69104KB, 시간: 8ms, 코드 길이: 368B
    private func solution2() {
        let T = Int(readLine()!)!

        for _ in 0..<T {
            let input = readLine()!.split(separator: " ").map { Int(String($0))! }

            let H = input[0]
            let W = input[1]
            let N = input[2]

            var floor = N % H
            var line = N / H

            if floor == 0 {
                floor = H
            } else {
                line += 1
            }

            print(line >= 10 ? "\(floor)\(line)" : "\(floor)0\(line)")
        }
    }

    // 메모리: 69104KB, 시간: 8ms, 코드 길이: 335B
    private func solution3() {
        let T = Int(readLine()!)!

        for _ in 0..<T {
            let input = readLine()!.split(separator: " ").map { Int(String($0))! }

            let H = input[0]
            let W = input[1]
            let N = input[2]

            var floor = N % H
            var line = N / H

            if floor == 0 {
                floor = H
            } else {
                line += 1
            }

            print(floor * 100 + line)
        }
    }
}
