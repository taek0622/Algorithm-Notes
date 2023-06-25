//
//  1834.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/06/25.
//

// 문제: https://www.acmicpc.net/problem/1834

class BOJ1834: Solvable {
    func run() {
        solution3()
    }

    // 메모리: 69100KB, 시간: 12ms, 코드 길이: 107B
    private func solution1() {
        let N = Int(readLine()!)!
        var sum = 0

        for number in 0..<N {
            sum += (N * number + number)
        }

        print(sum)
    }

    // 메모리: 69100KB, 시간: 12ms, 코드 길이: 104B
    private func solution2() {
        let N = Int(readLine()!)!
        var sum = 0

        for number in 0..<N {
            sum += (number * (N + number))
        }

        print(sum)
    }

    // 메모리: 69100KB, 시간: 8ms, 코드 길이: 60B
    private func solution3() {
        let N = Int(readLine()!)!
        print((N + 1) * (N * (N - 1) / 2))
    }
}
