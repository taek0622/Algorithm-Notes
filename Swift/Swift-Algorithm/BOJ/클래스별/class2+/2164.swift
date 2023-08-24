//
//  2164.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/01/30.
//
//2:38
// 문제: https://www.acmicpc.net/problem/2164

import Foundation

class BOJ2164: Solvable {
    func run() {
        // 메모리: 79508KB, 시간: 12ms, 코드 길이: 186ms
        let N = Int(readLine()!)!
        var number = N-1
        var count = 0

        while number > 1 {
            number /= 2
            count += 1
        }

        print(N == 1 ? 1 : (N - Int(pow(2, Double(count)))) * 2)
    }
}
