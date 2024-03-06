//
//  11049.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 3/6/24.
//

//  문제 링크: https://www.acmicpc.net/problem/11049
//  알고리즘 분류: 다이나믹 프로그래밍

class BOJ11049: Solvable {
    func run() {
        // 메모리: 71088KB, 시간: 560ms, 코드 길이: 749B
        let N = Int(readLine()!)!
        var matrix = [(Int, Int)]()
        var multiple = Array(repeating: Array(repeating: -1, count: 501), count: 501)

        for _ in 0..<N {
            let input = readLine()!.split(separator: " ").map { Int($0)! }
            matrix.append((input[0], input[1]))
        }

        print(countOperations(0, N-1))

        func countOperations(_ start: Int, _ end: Int) -> Int {
            if start == end {
                return 0
            }

            var count = multiple[start][end]
            if count != -1 {
                return count
            }

            for idx in start..<end {
                let cost = countOperations(start, idx) + countOperations(idx+1, end) + matrix[start].0 * matrix[idx].1 * matrix[end].1
                count = count == -1 ? cost : min(count, cost)
            }

            multiple[start][end] = count

            return count
        }
    }
}
