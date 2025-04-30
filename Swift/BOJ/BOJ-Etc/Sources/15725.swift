//
//  15725.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/08/16.
//

// 문제: https://www.acmicpc.net/problem/15725

class BOJ15725: Solvable {
    func run() {
        // 메모리: 69104KB, 시간: 8ms, 코드 길이: 872B
        let input = readLine()!

        if !input.contains("x") {
            print(0)
        } else {
            var expression = [String]()

            if input.contains("-") && input.first != "-" {
                expression = input.split(separator: "-").map { String($0) }
            } else {
                expression = input.split(separator: "+").map { String($0) }
            }

            if expression[0].contains("x") {
                if expression[0].split(separator: "x").isEmpty {
                    print(1)
                } else if expression[0].split(separator: "x")[0] == "-" {
                    print(-1)
                } else {
                    print(expression[0].split(separator: "x")[0])
                }
            } else {
                if expression[1].split(separator: "x").isEmpty {
                    print(1)
                } else if expression[1].split(separator: "x")[0] == "-" {
                    print(-1)
                } else {
                    print(expression[1].split(separator: "x")[0])
                }
            }
        }
    }
}
