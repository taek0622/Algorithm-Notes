//
//  4796.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/03/18.
//

// 문제: https://www.acmicpc.net/problem/4796

class BOJ4796: Solvable {
    func run() {
        // 메모리: 69104KB, 시간: 12ms, 코드 길이: 273B
        var order = 1

        while let input = readLine(), input != "0 0 0" {
            let LPV = input.split(separator: " ").map { Int(String($0))! }
            var result = LPV[2] / LPV[1] * LPV[0]

            result += min(LPV[0], LPV[2] % LPV[1])

            print("Case \(order): \(result)")

            order += 1
        }
    }
}
