//
//  4344.swift
//  Swift
//
//  Created by 김민택 on 2022/06/01.
//

// 문제: https://www.acmicpc.net/problem/4344

class BOJ4344 {
    func run() {
        // 메모리: 79512KB, 시간: 16ms, 코드 길이: 491B

        let input = Int(readLine()!)!

        for _ in 0..<input {
            let score = readLine()!.split(separator: " ").map { Int(String($0))! }
            var sum = 0
            for i in 1...score[0] {
                sum += score[i]
            }
            let average = sum / score[0]
            var cnt = 0
            for i in 1...score[0] {
                if score[i] > average {
                    cnt += 1
                }
            }
            let ratio = Double(cnt) / Double(score[0]) * 100
            let result = String(format: "%.3f", ratio)
            print("\(result)%")
        }
    }
}
