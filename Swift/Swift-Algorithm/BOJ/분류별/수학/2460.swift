//
//  2460.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/03/18.
//

// 문제: https://www.acmicpc.net/problem/2460

class BOJ2460: Solvable {
    func run() {
        // 메모리: 69104KB, 시간: 8ms, 코드 길이: 291B
        var population = 0
        var maxPopultaion = 0

        for _ in 0..<10 {
            let input = readLine()!.split(separator: " ").map { Int(String($0))! }

            population -= input[0]
            population += input[1]

            if population > maxPopultaion {
                maxPopultaion = population
            }
        }

        print(maxPopultaion)
    }
}
