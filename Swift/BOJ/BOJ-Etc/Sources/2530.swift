//
//  2530.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/02/13.
//

// 문제: https://www.acmicpc.net/problem/2530

class BOJ2530: Solvable {
    func run() {
        solution2()
    }

    // 메모리: 69104KB, 시간: 8ms, 코드 길이: 259B
    private func solution1() {
        let input = readLine()!.split(separator: " ").map { Int(String($0))! }
        var second = (Int(readLine()!)! + input[0] * 3600 + input[1] * 60 + input[2]) % 86400

        let hour = second / 3600
        second %= 3600

        let min = second / 60
        second %= 60

        print(hour, min, second)
    }

    // 메모리: 69104KB, 시간: 8ms, 코드 길이: 225B
    private func solution2() {
        var input = readLine()!.split(separator: " ").map { Int(String($0))! }
        let second = Int(readLine()!)!

        input[2] += second
        input[1] += input[2] / 60
        input[0] += input[1] / 60

        print(input[0] % 24, input[1] % 60, input[2] % 60)
    }
}
