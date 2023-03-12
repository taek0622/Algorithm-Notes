//
//  2960.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/03/12.
//

// 문제: https://www.acmicpc.net/problem/2960

class BOJ2960: Solvable {
    func run() {
        // 메모리: 69108KB, 시간: 8ms, 코드 길이: 438B
        let input = readLine()!.split(separator: " ").map { Int(String($0))! }
        var numbers = Set(2...input[0])
        var divisor = 2
        var count = 0

        outer: while true {
            for number in stride(from: divisor, through: input[0], by: divisor) where numbers.contains(number) {
                let result = numbers.remove(number)
                count += 1
                if count == input[1] {
                    print(result!)
                    break outer
                }
            }
            divisor += 1
        }
    }
}
