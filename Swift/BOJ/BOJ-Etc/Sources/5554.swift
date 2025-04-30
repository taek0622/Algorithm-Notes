//
//  5554.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/03/10.
//

// 문제: https://www.acmicpc.net/problem/5554

class BOJ5554: Solvable {
    func run() {
        // 메모리: 69100KB, 시간: 8ms, 코드 길이: 107B
        var seconds = 0

        for _ in 0..<4 {
            seconds += Int(readLine()!)!
        }

        print("\(seconds/60)\n\(seconds%60)")
    }
}
