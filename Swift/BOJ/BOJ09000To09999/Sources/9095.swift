//
//  9095.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/09/25.
//

//  문제 링크: https://www.acmicpc.net/problem/9095
//  알고리즘 분류: 다이나믹 프로그래밍

class BOJ9095: Solvable {
    func run() {
        solution2()
    }

    // 메모리: 69100KB, 시간: 8ms, 코드 길이: 297B
    private func solution1() {
        let T = Int(readLine()!)!
        var numbers = [Int]()
        var dp = [1, 2, 4]
        var result = ""

        for _ in 0..<T {
            numbers.append(Int(readLine()!)!)
        }

        for idx in 3..<numbers.max()! {
            dp.append(dp[idx-3...idx-1].reduce(0, +))
        }

        for number in numbers {
            result += "\(dp[number-1])\n"
        }

        print(result)
    }

    // 메모리: 69100KB, 시간: 8ms, 코드 길이: 168B
    private func solution2() {
        let T = Int(readLine()!)!
        var dp = [1, 2, 4]

        for idx in 3..<11 {
            dp.append(dp[idx-3...idx-1].reduce(0, +))
        }

        for _ in 0..<T {
            print(dp[Int(readLine()!)!-1])
        }
    }
}
