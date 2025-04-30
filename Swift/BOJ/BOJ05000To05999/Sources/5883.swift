//
//  5883.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 3/23/25.
//

//  문제 링크: https://www.acmicpc.net/problem/5883
//  알고리즘 분류: 구현, 브루트포스 알고리즘

class BOJ5883: Solvable {
    func run() {
        // 메모리: 69104KB, 시간: 12ms, 코드 길이: 483B
        let N = Int(readLine()!)!
        var line = [Int]()
        var memory = Set<Int>()
        var maxLength = 0

        for _ in 0..<N {
            let B = Int(readLine()!)!
            line.append(B)
            memory.insert(B)
        }

        for B in memory {
            let newLine = line.filter { $0 != B }
            var seq = (-1, 0)

            for idx in newLine.indices {
                if newLine[idx] != seq.0 {
                    seq = (newLine[idx], 1)
                } else {
                    seq.1 += 1
                }

                maxLength = max(maxLength, seq.1)
            }
        }

        print(maxLength)
    }
}
