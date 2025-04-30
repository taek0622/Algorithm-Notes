//
//  18110.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/07/28.
//

// 문제: https://www.acmicpc.net/problem/18110

import Foundation

class BOJ18110: Solvable {
    func run() {
        // 메모리: 85760KB, 시간: 168ms, 코드 길이: 346B
        let n = Int(readLine()!)!
        let trim = Int(round(Double(n) * 0.15))

        if n == 0 {
            print(0)
        } else {
            var difficulties = [Double]()

            for _ in 0..<n {
                difficulties.append(Double(readLine()!)!)
            }

            difficulties.sort()

            print(Int(round(difficulties[trim..<n-trim].reduce(0, +) / Double(n - 2 * trim))))
        }
    }
}
