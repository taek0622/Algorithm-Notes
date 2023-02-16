//
//  11399.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/02/03.
//

// 문제: https://www.acmicpc.net/problem/11399

class BOJ11399: Solvable {
    func run() {
        solution2()
    }

    // 메모리: 69108KB, 시간: 8ms, 코드 길이: 211B
    private func solution1() {
        let N = Int(readLine()!)!
        var times = readLine()!.split(separator: " ").map { Int(String($0))! }.sorted()

        for idx in times.indices where idx != 0 {
            times[idx] += times[idx - 1]
        }

        print(times.reduce(0, +))
    }

    // 메모리: 69108KB, 시간: 8ms, 코드 길이: 187B
    private func solution2() {
        let N = Int(readLine()!)!
        let times = readLine()!.split(separator: " ").map { Int(String($0))! }.sorted()
        var sum = 0

        for idx in 0..<N {
            sum += (times[idx] * (N - idx))
        }

        print(sum)
    }
}
