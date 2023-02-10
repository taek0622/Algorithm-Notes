//
//  10869.swift
//  Swift
//
//  Created by 김민택 on 2022/05/10.
//

// 문제: https://www.acmicpc.net/problem/10869

class BOJ10869: Solvable {
    func run() {
        let input = readLine()!.split(separator: " ").map {
            Int($0)!
        }

        print(input[0] + input[1])
        print(input[0] - input[1])
        print(input[0] * input[1])
        print(input[0] / input[1])
        print(input[0] % input[1])
    }
}
