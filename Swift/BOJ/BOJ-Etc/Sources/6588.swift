//
//  6588.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/03/17.
//

// 문제: https://www.acmicpc.net/problem/6588

class BOJ6588: Solvable {
    func run() {
        // 메모리: 70080KB, 시간: 204ms, 코드 길이: 538B
        var numbers = Array(repeating: true, count: 1000001)
        numbers[0...1] = [false, false]

        for number in 2..<1000000 where numbers[number] {
            for idx in stride(from: number * number, through: 1000000, by: number) {
                numbers[idx] = false
            }
        }

        while let input = readLine(), input != "0" {
            let n = Int(String(input))!
            var result = "Goldbach's conjecture is wrong."

            for idx in numbers.indices where numbers[idx] && numbers[n - idx] {
                result = "\(n) = \(idx) + \(n - idx)"
                break
            }

            print(result)
        }
    }
}
