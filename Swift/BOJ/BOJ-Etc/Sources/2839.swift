//
//  2839.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2022/12/29.
//

// 문제: https://www.acmicpc.net/problem/2839

class BOJ2839: Solvable {
    func run() {
        solution2()
    }

    // 메모리: 69100KB, 시간: 28ms, 코드 길이: 243B
    private func solution1() {
        let N = Int(readLine()!)!
        var counts = [Int]()

        for i in 0..<N {
            for j in 0..<N {
                if N == (5 * i + 3 * j) {
                    counts.append(i + j)
                }
            }
        }
        
        if let count = counts.min() {
            print(count)
        } else {
            print(-1)
        }
    }

    // 메모리: 69100KB, 시간: 8ms, 코드 길이: 257B
    private func solution2() {
        print(checkCount(Int(readLine()!)!))

        func checkCount(_ N: Int) -> Int {
            let numbers = Array(0...N/5).reversed()

            for number in numbers {
                if (N - 5 * number) % 3 == 0 {
                    return (N - 2 * number) / 3
                }
            }

            return -1
        }
    }
}
