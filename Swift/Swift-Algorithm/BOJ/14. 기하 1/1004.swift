//
//  1004.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/01/18.
//

// 문제: https://www.acmicpc.net/problem/1004

class BOJ1004: Solvable {
    func run() {
        // 메모리: 69104KB, 시간: 16ms, 코드 길이: 757B
        let T = Int(readLine()!)!

        for _ in 0..<T {
            let input = readLine()!.split(separator: " ").map { Int(String($0))! }
            let n = Int(readLine()!)!
            var count = 0

            for _ in 0..<n {
                let circle = readLine()!.split(separator: " ").map { Int(String($0))! }

                if innerPoint(input[0], input[1], circle) && innerPoint(input[2], input[3], circle) {
                    continue
                } else if innerPoint(input[0], input[1], circle) || innerPoint(input[2], input[3], circle) {
                    count += 1
                }
            }

            print(count)
        }

        func innerPoint(_ x: Int, _ y: Int, _ circle: [Int]) -> Bool {
            if (circle[0] - x) * (circle[0] - x) + (circle[1] - y) * (circle[1] - y) < circle[2] * circle[2] {
                return true
            }

            return false
        }
    }
}
