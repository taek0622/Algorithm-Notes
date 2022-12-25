//
//  10951.swift
//  Swift
//
//  Created by 김민택 on 2022/05/22.
//

// 문제: https://www.acmicpc.net/problem/10951

class BOJ10951 {
    func run() {
        solution3()
    }

    // 메모리: 69104KB, 시간: 8ms, 코드 길이: 144B
    private func solution1() {
        while let input = readLine() {
            let num = input.split(separator: " ").map { Int(String($0))! }
            let sum = num[0] + num[1]
            print(sum)
        }
    }

    // 메모리: 69104KB, 시간: 12ms, 코드 길이: 111B
    private func solution2() {
        while let input = readLine()?.split(separator: " ").map({ Int(String($0))! }).reduce(0, +) {
            print(input)
        }
    }

    // 메모리: 69014KB, 시간: 8ms, 코드 길이: 108B
    private func solution3() {
        while let input = readLine() {
            print(input.split(separator: " ").map{ Int(String($0))! }.reduce(0, +))
        }
    }
}
