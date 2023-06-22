//
//  1526.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/06/22.
//

// 문제: https://www.acmicpc.net/problem/1526

class BOJ1526: Solvable {
    func run() {
        solution2()
    }

    // 메모리: 69100KB, 시간: 156ms, 코드 길이: 330B
    private func solution1() {
        var N = Int(readLine()!)!

        while N >= 4 {
            if String(N).contains("0") || String(N).contains("1") || String(N).contains("2") || String(N).contains("3") || String(N).contains("5") || String(N).contains("6") || String(N).contains("8") || String(N).contains("9") {
                N -= 1
            } else {
                print(N)
                break
            }
        }
    }

    // 메모리: 69100KB, 시간: 8ms, 코드 길이: 266B
    private func solution2() {
        var N = Int(readLine()!)!

        loop: while N >= 4 {
            var number = N

            while number > 0 {
                if number % 10 != 4 && number % 10 != 7 {
                    N -= 1
                    continue loop
                } else {
                    number /= 10
                }
            }

            break
        }

        print(N)
    }
}
