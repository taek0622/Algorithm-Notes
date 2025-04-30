//
//  1699.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/02/11.
//

// 문제: https://www.acmicpc.net/problem/1699

import Foundation

class BOJ1699: Solvable {
    func run() {
        let N = Int(readLine()!)!
        var numbers = Array(repeating: 0, count: N+1)
        var count = 0

        for idx in 0...N {
            numbers[idx] = idx * idx
        }

        var num = 1

        while num * num < N {
            var target = N

            
        }
//        while N > 0 {
//            N -= numbers.filter { $0 <= N }.max()!
//            count += 1
//        }

        print(count)
    }
}
