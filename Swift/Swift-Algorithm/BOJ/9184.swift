//
//  9184.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/03/08.
//

//  문제 링크: https://www.acmicpc.net/problem/9184
//  알고리즘 분류: 다이나믹 프로그래밍, 재귀

class BOJ9184: Solvable {
    func run() {
        solution2()
    }

    // 메모리: 74604KB, 시간: 52ms, 코드 길이: 848B
    private func solution1() {
        var numbers = Array(repeating: Array(repeating: Array(repeating: 0, count: 101), count: 101), count: 101)

        while let input = readLine(), input != "-1 -1 -1" {
            let value = input.split(separator: " ").map { Int(String($0))! }

            print("w(\(value[0]), \(value[1]), \(value[2])) = \(w(value[0]+50, value[1]+50, value[2]+50))")
        }

        func w(_ a: Int, _ b: Int, _ c: Int) -> Int {
            if numbers[a][b][c] == 0 {
                if a <= 50 || b <= 50 || c <= 50 {
                    numbers[a][b][c] = 1
                } else if a > 70 || b > 70 || c > 70 {
                    numbers[a][b][c] = w(70, 70, 70)
                } else if a < b && b < c {
                    numbers[a][b][c] = w(a, b, c-1) + w(a, b-1, c-1) - w(a, b-1, c)
                } else {
                    numbers[a][b][c] = w(a-1, b, c) + w(a-1, b-1, c) + w(a-1, b, c-1) - w(a-1, b-1, c-1)
                }
            }

            return numbers[a][b][c]
        }
    }

    // 메모리: 69108KB, 시간: 44ms, 코드 길이: 821B
    private func solution2() {
        var numbers = Array(repeating: Array(repeating: Array(repeating: 1, count: 21), count: 21), count: 21)

        for a in 1...20 {
            for b in 1...20 {
                for c in 1...20 {
                    numbers[a][b][c] = (a < b && b < c) ? numbers[a][b][c-1] + numbers[a][b-1][c-1] - numbers[a][b-1][c] : numbers[a-1][b][c] + numbers[a-1][b-1][c] + numbers[a-1][b][c-1] - numbers[a-1][b-1][c-1]
                }
            }
        }

        while let input = readLine(), input != "-1 -1 -1" {
            let value = input.split(separator: " ").map { Int(String($0))! }
            let (a, b, c) = (value[0], value[1], value[2])
            var result = 0

            if a <= 0 || b <= 0 || c <= 0 {
                result = 1
            } else if a > 20 || b > 20 || c > 20 {
                result = numbers[20][20][20]
            } else {
                result = numbers[a][b][c]
            }

            print("w(\(a), \(b), \(c)) = \(result)")
        }
    }
}
