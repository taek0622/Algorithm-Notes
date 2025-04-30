//
//  10610.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/02/13.
//

// 문제: https://www.acmicpc.net/problem/10610

class BOJ10610: Solvable {
    func run() {
        // 메모리: 72336KB, 시간: 36ms, 코드 길이: 206B
        let number = Array(readLine()!).map { Int(String($0))! }

        if !number.contains(0) || number.reduce(0, +) % 3 != 0 {
            print("-1")
        } else {
            print("\(number.sorted(by: >).map { String($0) }.joined())")
        }
    }
}
