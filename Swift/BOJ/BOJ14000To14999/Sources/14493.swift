//
//  14493.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 4/30/25.
//

//  문제 링크: https://www.acmicpc.net/problem/14493
//  알고리즘 분류: 수학, 구현, 시뮬레이션

struct BOJ14493: Solvable {
    func run() {
        // 메모리: 69104KB, 시간: 56ms, 코드 길이: 294B
        let N = Int(readLine()!)!
        var second = 0

        for _ in 0..<N {
            let ab = readLine()!.split(separator: " ").map { Int($0)! }
            let detect = second / (ab[0] + ab[1]) * (ab[0] + ab[1])

            if detect..<detect+ab[1] ~= second {
                second = detect+ab[1]
            }

            second += 1
        }

        print(second)
    }
}
