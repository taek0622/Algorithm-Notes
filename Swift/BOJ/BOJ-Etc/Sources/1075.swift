//
//  1075.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/03/15.
//

// 문제: https://www.acmicpc.net/problem/1075

import Foundation

class BOJ1075: Solvable {
    func run() {
        solution4()
    }

    // 메모리: 79512KB, 시간: 12ms, 코드 길이: 248B
    private func solution1() {
        var N = Array(readLine()!).map { String($0) }
        let F = Int(readLine()!)!

        N[N.count-2...N.count-1] = ["0", "0"]

        var number = Int(N.joined())!

        while number % F != 0 {
            number += 1
        }

        print(String(format: "%02d", number % 100))
    }

    // 메모리: 79508KB, 시간: 12ms, 코드 길이: 282B
    private func solution2() {
        var N = String(readLine()!)
        N.replaceSubrange(N.index(N.endIndex, offsetBy: -2)...N.index(N.endIndex, offsetBy: -1), with: "00")
        let F = Int(readLine()!)!
        var number = Int(N)!

        while number % F != 0 {
            number += 1
        }

        print(String(format: "%02d", number % 100))
    }

    // 메모리: 79508KB, 시간: 12ms, 코드 길이: 185B
    private func solution3() {
        let N = Int(readLine()!)!
        let F = Int(readLine()!)!
        var number = 0

        while (N / 100 * 100 + number) % F != 0 {
            number += 1
        }

        print(String(format: "%02d", number % 100))
    }

    // 메모리: 69100KB, 시간: 8ms, 코드 길이: 170B
    private func solution4() {
        let N = Int(readLine()!)!
        let F = Int(readLine()!)!
        var number = 0

        while (N / 100 * 100 + number) % F != 0 {
            number += 1
        }

        print(number > 9 ? number : "0\(number)")
    }
}
