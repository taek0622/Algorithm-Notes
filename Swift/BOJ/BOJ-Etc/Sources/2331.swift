//
//  2331.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/07/30.
//

// 문제: https://www.acmicpc.net/problem/2331

class BOJ2331: Solvable {
    func run() {
        // 메모리: 69104KB, 시간: 8ms, 코드 길이: 450B
        var input = readLine()!.split(separator: " ").map { Int(String($0))! }
        var D = [Int]()

        while !D.contains(input[0]) {
            D.append(input[0])
            var number = 0

            while input[0] > 0 {
                let digit = input[0] % 10
                input[0] /= 10
                var sum = 1

                for _ in 0..<input[1] {
                    sum *= digit
                }

                number += sum
            }

            input[0] = number
        }

        D.removeSubrange(D.firstIndex(of: input[0])!...)

        print(D.count)
    }
}
