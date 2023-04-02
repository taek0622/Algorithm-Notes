//
//  2864.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/04/02.
//

// 문제: https://www.acmicpc.net/problem/2864

class BOJ2864: Solvable {
    func run() {
        let input = readLine()!.split(separator: " ").map { Int(String($0) }
        var minSum = 0
        var maxSum = 0

        if input[0] % 10 == 5 || input[0] % 10 == 6 {
            minSum += (input[0] / 10) * 10 + 5
            maxSum += (input[0] / 10) * 10 + 6
        }

        if input[1] % 10 == 5 || input[1] % 10 == 6 {
            minSum += (input[1] / 10) * 10 + 5
            maxSum += (input[1] / 10) * 10 + 6
        }

        print(minSum, maxSum)
    }
}
