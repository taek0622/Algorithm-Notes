//
//  2563.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/01/02.
//

// 문제: https://www.acmicpc.net/problem/2563

class BOJ2563: Solvable {
    func run() {
        // 메모리: 69104KB, 시간: 8ms, 코드 길이: 525B
        var background = Array(repeating: Array(repeating: false, count: 100), count: 100)
        let paperCount = Int(readLine()!)!
        var sizeCount = 0

        for _ in 0..<paperCount {
            let paper = readLine()!.split(separator: " ").map { Int(String($0))! }

            for line in paper[0]-1..<paper[0]+9 {
                for element in paper[1]-1..<paper[1]+9 {
                    background[line][element] = true
                }
            }
        }

        for line in 0..<100 {
            for element in 0..<100 where background[line][element] {
                sizeCount += 1
            }
        }

        print(sizeCount)
    }
}
