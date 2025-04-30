//
//  9610.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/04/30.
//

// 문제: https://www.acmicpc.net/problem/9610

class BOJ9610: Solvable {
    func run() {
        solution2()
    }

    // 메모리: 69104KB, 시간: 12ms, 코드 길이: 584B
    private func solution1() {
        let n = Int(readLine()!)!
        var points = (0, 0, 0, 0, 0)

        for _ in 0..<n {
            let location = readLine()!.split(separator: " ").map { Int(String($0))! }

            if location[0] == 0 || location[1] == 0 {
                points.4 += 1
            } else if location[0] > 0 {
                if location[1] > 0 {
                    points.0 += 1
                } else {
                    points.3 += 1
                }
            } else {
                if location[1] > 0 {
                    points.1 += 1
                } else {
                    points.2 += 1
                }
            }
        }

        print("Q1: \(points.0)\nQ2: \(points.1)\nQ3: \(points.2)\nQ4: \(points.3)\nAXIS: \(points.4)")
    }

    // 메모리: 69104KB, 시간: 12ms, 코드 길이: 530B
    private func solution2() {
        let n = Int(readLine()!)!
        var points = (0, 0, 0, 0, 0)

        for _ in 0..<n {
            let location = readLine()!.split(separator: " ").map { Int(String($0))! }

            switch (location[0], location[1]) {
            case (1..., 1...):
                points.0 += 1
            case (..<0, 1...):
                points.1 += 1
            case (..<0, ..<0):
                points.2 += 1
            case (1..., ..<0):
                points.3 += 1
            default:
                points.4 += 1
            }
        }

        print("Q1: \(points.0)\nQ2: \(points.1)\nQ3: \(points.2)\nQ4: \(points.3)\nAXIS: \(points.4)")
    }
}
