//
//  10998.swift
//  Swift
//
//  Created by 김민택 on 2022/05/10.
//

// 문제: https://www.acmicpc.net/problem/10998

class BOJ10998 {
    func run() {
        let input = readLine()!.split(separator: " ").map {
            Int($0)!
        }

        var result = 1

        for i in input {
            result *= i
        }

        print(result)
    }
}
