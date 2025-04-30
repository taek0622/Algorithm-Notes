//
//  1016.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/03/18.
//

// 문제: https://www.acmicpc.net/problem/1016

class BOJ1016: Solvable {
    func run() {
        let input = readLine()!.split(separator: " ").map { Int(String($0))! }
        var numbers = Set<Int>(input[0]...input[1])
        var count = 0
        var divisor = 2

        while divisor * divisor <= input[1] {
            
        }

        print(input[1] - input[0] + 1 - count)
    }
}
