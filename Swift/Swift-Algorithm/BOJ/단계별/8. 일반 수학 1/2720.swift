//
//  2720.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/03/31.
//

// 문제: https://www.acmicpc.net/problem/2720

class BOJ2720: Solvable {
    func run() {
        // 메모리: 69100KB, 시간: 8ms, 코드 길이: 248B
        let T = Int(readLine()!)!
        var result = ""

        for _ in 0..<T {
            var C = Int(readLine()!)!

            result += "\(C / 25) "
            C %= 25

            result += "\(C / 10) "
            C %= 10

            result += "\(C / 5) "
            C %= 5

            result += "\(C)\n"
        }

        print(result)
    }
}
