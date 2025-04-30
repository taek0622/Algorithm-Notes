//
//  1912.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 10/1/23.
//

//  문제 링크: https://www.acmicpc.net/problem/1912
//  알고리즘 분류: 다이나믹 프로그래밍

class BOJ1912: Solvable {
    func run() {
        // 메모리: 76112KB, 시간: 32ms, 코드 길이: 253B
        let n = Int(readLine()!)!
        let numbers = readLine()!.split(separator: " ").map { Int($0)! }
        var dp = Array(repeating: -1000, count: 100000)
        dp[0] = numbers[0]

        for idx in 1..<n {
            dp[idx] = max(numbers[idx], dp[idx-1]+numbers[idx])
        }

        print(dp.max()!)
    }
}
