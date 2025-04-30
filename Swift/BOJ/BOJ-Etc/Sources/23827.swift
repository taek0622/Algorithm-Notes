//
//  23827.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/08/17.
//

// 문제: https://www.acmicpc.net/problem/23827

class BOJ23827: Solvable {
    func run() {
        // 메모리: 101120KB, 시간: 220ms, 코드 길이: 236B
        let N = Int(readLine()!)!
        let A = readLine()!.split(separator: " ").map { Int(String($0))! }
        var sum = A.reduce(0, +)
        var result = 0

        for number in A {
            sum -= number
            result = (result + number * sum) % 1000000007
        }

        print(result)
    }
}
