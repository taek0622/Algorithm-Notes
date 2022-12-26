//
//  1000.swift
//  Swift
//
//  Created by 김민택 on 2022/05/09.
//

// 문제: https://www.acmicpc.net/problem/1000

class BOJ1000: Solvable {
    func run() {
        let input = readLine()!.split(separator: " ").map {
            Int(String($0))!
        }

        var result = 0

        for i in input {
            result += i
        }

        print(result)
    }
}
