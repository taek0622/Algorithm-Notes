//
//  2010.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/03/11.
//

// 문제: https://www.acmicpc.net/problem/2010

class BOJ2010: Solvable {
    func run() {
        // 메모리: 69100KB, 시간: 176ms, 코드 길이: 106B
        let N = Int(readLine()!)!
        var sum = 0

        for _ in 0..<N {
            sum += Int(readLine()!)!
        }

        print(sum - N + 1)
    }
}
