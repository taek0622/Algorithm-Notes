//
//  10811.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/02/28.
//

// 문제: https://www.acmicpc.net/problem/10811

class BOJ10811: Solvable {
    func run() {
        // 메모리: 69108KB, 시간: 8ms, 코드 길이: 289B
        let NM = readLine()!.split(separator: " ").map { Int(String($0))! }
        var basket = Array(1...NM[0])

        for _ in 0..<NM[1] {
            let input = readLine()!.split(separator: " ").map { Int(String($0))! - 1 }
            basket[input[0]...input[1]].reverse()
        }

        basket.forEach { print($0, terminator: " ") }
    }
}
