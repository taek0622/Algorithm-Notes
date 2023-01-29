//
//  1924.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/01/30.
//

// 문제: https://www.acmicpc.net/problem/1924

class BOJ1924: Solvable {
    func run() {
        solution2()
    }

    // 메모리: 69104KB, 시간: 8ms, 코드 길이: 330B
    private func solution1() {
        let date = readLine()!.split(separator: " ").map { Int(String($0))! }
        let monthDays = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
        let weeks = ["MON", "TUE", "WED", "THU", "FRI", "SAT", "SUN"]

        var dateDiff = 0

        for idx in 0..<date[0]-1 {
            dateDiff += monthDays[idx]
        }

        dateDiff += (date[1] - 1)

        print(weeks[dateDiff % 7])
    }

    // 메모리: 69104KB, 시간: 8ms, 코드 길이: 270B
    private func solution2() {
        let date = readLine()!.split(separator: " ").map { Int(String($0))! }
        let monthDays = [0, 31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
        let weeks = ["MON", "TUE", "WED", "THU", "FRI", "SAT", "SUN"]

        print(weeks[(monthDays[0..<date[0]].reduce(0, +) + date[1] - 1) % 7])
    }
}
