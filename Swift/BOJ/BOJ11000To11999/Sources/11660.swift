//
//  11660.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 11/24/23.
//

//  문제 링크: https://www.acmicpc.net/problem/11660
//  알고리즘 분류: 다이나믹 프로그래밍, 누적 합

import Shared

public struct BOJ11660: Solvable {
    public init() {}

    public func run() {
        solution1()
    }

    // 메모리: 79368KB, 시간: 532ms, 코드 길이: 1255B
    private func solution1() {
        let NM = readLine()!.split(separator: " ").map { Int(String($0))! }
        var numbers = Array(repeating: Array(repeating: 0, count: NM[0]), count: NM[0])
        var result = ""

        for row in 0..<NM[0] {
            let input = readLine()!.split(separator: " ").map { Int(String($0))! }
            var rowArray = input

            if row == 0 {
                for col in 1..<NM[0] {
                    rowArray[col] += rowArray[col-1]
                }
            } else {
                rowArray[0] += numbers[row-1][0]

                for col in 1..<NM[0] {
                    rowArray[col] = rowArray[col] + numbers[row-1][col] + rowArray[col-1] - numbers[row-1][col-1]
                }
            }

            numbers[row] = rowArray
        }

        for _ in 0..<NM[1] {
            let input = readLine()!.split(separator: " ").map { Int(String($0))! - 1 }

            if input[0] == 0 && input[1] == 0 {
                result += "\(numbers[input[2]][input[3]])"
            } else if input[0] == 0 {
                result += "\(numbers[input[2]][input[3]] - numbers[input[2]][input[1]-1])"
            } else if input[1] == 0 {
                result += "\(numbers[input[2]][input[3]] - numbers[input[0]-1][input[3]])"
            } else {
                result += "\(numbers[input[2]][input[3]] - numbers[input[2]][input[1]-1] - numbers[input[0]-1][input[3]] + numbers[input[0]-1][input[1]-1])"
            }

            result += "\n"
        }

        print(result)
    }

    // 메모리: 79368KB, 시간: 556ms, 코드 길이: 691B
    private func solution2() {
        let NM = readLine()!.split(separator: " ").map { Int(String($0))! }
        var numbers = Array(repeating: Array(repeating: 0, count: NM[0] + 1), count: NM[0] + 1)
        var result = ""

        for row in 1...NM[0] {
            numbers[row] = [0] + readLine()!.split(separator: " ").map { Int(String($0))! }

            for col in 1...NM[0] {
                numbers[row][col] = numbers[row][col] + numbers[row-1][col] + numbers[row][col-1] - numbers[row-1][col-1]
            }
        }

        for _ in 0..<NM[1] {
            let input = readLine()!.split(separator: " ").map { Int(String($0))! }

            result += "\(numbers[input[2]][input[3]] - numbers[input[2]][input[1]-1] - numbers[input[0]-1][input[3]] + numbers[input[0]-1][input[1]-1])\n"
        }

        print(result)
    }
}
