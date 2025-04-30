//
//  2160.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 9/2/24.
//

//  문제 링크: https://www.acmicpc.net/problem/2160
//  알고리즘 분류: 구현, 브루트포스 알고리즘

class BOJ2160: Solvable {
    func run() {
        // 메모리: 69104KB, 시간: 8ms, 코드 길이: 757B
        let N = Int(readLine()!)!
        var pictures = Array(repeating: Array(repeating: Array(repeating: false, count: 7), count: 5), count: N)
        var diff = (base: 0, compare: 0, count: Int.max)

        for picture in 0..<N {
            for row in 0..<5 {
                pictures[picture][row] = readLine()!.map { $0 == "X" }
            }
        }

        for base in 0..<N {
            for compare in base..<N where base != compare {
                var count = 0

                for row in 0..<5 {
                    for col in 0..<7 where pictures[base][row][col] != pictures[compare][row][col] {
                        count += 1
                    }
                }

                if count < diff.count {
                    diff.base = base + 1
                    diff.compare = compare + 1
                    diff.count = count
                }
            }
        }

        print("\(diff.base) \(diff.compare)")
    }
}
