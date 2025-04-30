//
//  15736.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/08/11.
//

// 문제: https://www.acmicpc.net/problem/15736

import Foundation

class BOJ15736: Solvable {
    func run() {
        
    }

    // 메모리: 79504KB, 시간: 12ms, 코드 길이: 57B
    private func solution1() {
        print(Int(sqrt(Double(readLine()!)!)))
    }

    // 메모리: 69100KB, 시간: 8ms, 코드 길이: 103B
    private func solution2() {
        let N = Int(readLine()!)!

        var count = 1

        while count * count <= N {
            count += 1
        }

        print(count - 1)
    }
}
