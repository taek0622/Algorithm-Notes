//
//  2476.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/03/24.
//

// 문제: https://www.acmicpc.net/problem/2476

class BOJ2476: Solvable {
    func run() {
        // 메모리: 69104KB, 시간: 12ms, 코드 길이: 545B
        let N = Int(readLine()!)!
        var price = 0

        for _ in 0..<N {
            let input = readLine()!.split(separator: " ").map { Int(String($0))! }

            if input[0] == input[1], input[0] == input[2] {
                price = max(price, 10000 + input[0] * 1000)
            } else if input[0] == input[1] || input[0] == input[2] {
                price = max(price, 1000 + input[0] * 100)
            } else if input[1] == input[2] {
                price = max(price, 1000 + input[1] * 100)
            } else {
                price = max(price, input[0] * 100, input[1] * 100, input[2] * 100)
            }
        }

        print(price)
    }
}
