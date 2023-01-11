//
//  2609.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/01/12.
//

// 문제: https://www.acmicpc.net/problem/2609

class BOJ2609: Solvable {
    func run() {
        // 메모리: 69104KB, 시간: 12ms, 코드 길이: 302B
        let numbers = readLine()!.split(separator: " ").map { Int(String($0))! }
        var divisor = 0

        var count = 1
        while count <= numbers.min()! {
            if numbers[0] % count == 0 && numbers[1] % count == 0 {
                divisor = count
            }

            count += 1
        }

        print("\(divisor)\n\(numbers[0] * numbers[1] / divisor)")
    }
}
