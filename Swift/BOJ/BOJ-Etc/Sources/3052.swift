//
//  3052.swift
//  Swift
//
//  Created by 김민택 on 2022/05/26.
//

// 문제: https://www.acmicpc.net/problem/3052

class BOJ3052: Solvable {
    func run() {
        solution2()
    }

    // 메모리: 69100KB, 시간: 8ms, 코드 길이: 124B
    private func solution1() {
        var set: Set = Set<Int>()

        for _ in 0...9 {
            let input = Int(readLine()!)!
            set.insert(input % 42)
        }

        print(set.count)
    }

    // 메모리: 69104KB, 시간: 8ms, 코드 길이: 61B
    private func solution2() {
        print(Set((0...9).map { _ in Int(readLine()!)! % 42 }).count)
    }
}
