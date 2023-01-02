//
//  2587.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/01/02.
//

// 문제: https://www.acmicpc.net/problem/2587

class BOJ2587: Solvable {
    func run() {
        // 메모리: 69104KB, 시간: 8ms, 코드 길이: 141B
        var numbers = [Int]()

        for _ in 0..<5 {
            numbers.append(Int(readLine()!)!)
        }

        print("\(numbers.reduce(0, +) / 5)\n\(numbers.sorted()[2])")
    }
}
