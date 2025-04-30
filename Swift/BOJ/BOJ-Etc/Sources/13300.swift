//
//  13300.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/04/17.
//

// 문제: https://www.acmicpc.net/problem/13300

class BOJ13300: Solvable {
    func run() {
        // 메모리: 69104KB, 시간: 12ms, 코드 길이: 482B
        let input = readLine()!.split(separator: " ").map { Int(String($0))! }
        var students = Array(repeating: [0, 0], count: 6)
        var result = 0

        for _ in 0..<input[0] {
            let student = readLine()!.split(separator: " ").map { Int(String($0))! }
            students[student[1] - 1][student[0]] += 1
        }

        for student in students {
            for population in student {
                result += population / input[1]

                if population % input[1] != 0 {
                    result += 1
                }
            }
        }

        print(result)
    }
}
