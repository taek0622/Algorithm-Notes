//
//  6986.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 3/9/25.
//

//  문제 링크: https://www.acmicpc.net/problem/6986
//  알고리즘 분류: 구현, 정렬

import Foundation

class BOJ6986: Solvable {
    func run() {
        // 메모리: 80692KB, 시간: 68ms, 코드 길이: 495B
        let NK = readLine()!.split(separator: " ").map { Int($0)! }
        var scores = Array(repeating: 0.0, count: NK[0])

        for idx in 0..<NK[0] {
            scores[idx] = Double(readLine()!)!
        }

        scores.sort()

        let sum = scores[NK[1]..<NK[0]-NK[1]].reduce(0, +)
        print("\(String(format: "%.2f", round(sum / Double(NK[0] - NK[1] * 2) * 100.0) / 100.0))\n\(String(format: "%.2f", round((sum + scores[NK[1]] * Double(NK[1]) + scores[NK[0]-NK[1]-1] * Double(NK[1])) / Double(NK[0]) * 100.0) / 100.0))")
    }
}
