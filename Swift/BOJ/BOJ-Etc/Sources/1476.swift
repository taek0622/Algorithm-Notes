//
//  1476.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/02/06.
//

// 문제: https://www.acmicpc.net/problem/1476

class BOJ1476: Solvable {
    func run() {
        // 메모리: 69104KB, 시간: 8ms, 코드 길이: 265B
        let input = readLine()!.split(separator: " ").map { Int(String($0))! }
        var number = 1

        while number >= 1 {
            if (number % 15, number % 28, number % 19) == (input[0] % 15, input[1] % 28, input[2] % 19) {
                print(number)
                break
            }

            number += 1
        }
    }
}
