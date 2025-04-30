//
//  1769.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/06/29.
//

// 문제: https://www.acmicpc.net/problem/1769

class BOJ1769: Solvable {
    func run() {
        // 메모리: 77896KB, 시간: 72ms, 코드 길이: 225B
        var X = readLine()!.map { Int(String($0))! }
        var count = 0

        while X.count != 1 {
            let temp = String(X.reduce(0, +)).map { Int(String($0))! }
            X = temp
            count += 1
        }

        print("\(count)\n\(X[0] % 3 == 0 ? "YES" : "NO")")
    }
}
