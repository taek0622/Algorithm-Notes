//
//  25305.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/01/02.
//

// 문제: https://www.acmicpc.net/problem/25305

class BOJ25305: Solvable {
    func run() {
        solution2()
    }

    // 메모리: 69108KB, 시간: 8ms, 코드 길이: 200B
    private func solution1() {
        let input = readLine()!.split(separator: " ").map { Int(String($0))! }
        var students = readLine()!.split(separator: " ").map { Int(String($0))! }

        students.sort()
        print(students.reversed()[input[1]-1])
    }

    // 메모리: 69108KB, 시간: 8ms, 코드 길이: 187B
    private func solution2() {
        let input = readLine()!.split(separator: " ").map { Int(String($0))! }
        let students = readLine()!.split(separator: " ").map { Int(String($0))! }.sorted(by: >)

        print(students[input[1]-1])
    }
}
