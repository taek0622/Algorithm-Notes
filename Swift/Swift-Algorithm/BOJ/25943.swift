//
//  25943.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2/9/25.
//

//  문제 링크: https://www.acmicpc.net/problem/25943
//  알고리즘 분류: 구현, 그리디 알고리즘

class BOJ: Solvable {
    func run() {
        // 메모리: 70016KB, 시간: 8ms, 코드 길이: 476B
        let n = Int(readLine()!)!
        let gravels = readLine()!.split(separator: " ").map { Int($0)! }
        var weights = (gravels[0], gravels[1])

        for idx in 2..<n {
            if weights.0 >= weights.1 {
                weights.1 += gravels[idx]
            } else {
                weights.0 += gravels[idx]
            }
        }

        var diff = weights.0 >= weights.1 ? weights.0 - weights.1 : weights.1 - weights.0
        var count = 0

        for divisor in [100, 50, 20, 10, 5, 2, 1] {
            count += diff / divisor
            diff %= divisor
        }

        print(count)
    }
}
