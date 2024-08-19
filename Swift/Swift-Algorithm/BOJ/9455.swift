//
//  9455.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 8/19/24.
//

//  문제 링크: https://www.acmicpc.net/problem/9455
//  알고리즘 분류: 구현

class BOJ9455: Solvable {
    func run() {
        // 메모리: 69108KB, 시간: 76ms, 코드 길이: 563B
        let T = Int(readLine()!)!

        for _ in 0..<T {
            let mn = readLine()!.split(separator: " ").map { Int($0)! }
            var map = Array(repeating: Array(repeating: false, count: mn[1]), count: mn[0])
            var count = 0

            for idx in 0..<mn[0] {
                map[idx] = readLine()!.split(separator: " ").map { $0 == "1" }
            }

            for currentRow in 0..<mn[0] {
                for col in 0..<mn[1] where map[currentRow][col] {
                    for targetRow in currentRow+1..<mn[0] where !map[targetRow][col] {
                        count += 1
                    }
                }
            }

            print(count)
        }
    }
}
