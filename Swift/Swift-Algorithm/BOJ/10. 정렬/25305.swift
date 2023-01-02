//
//  25305.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/01/02.
//

// 문제: https://www.acmicpc.net/problem/25305

class BOJ25305: Solvable {
    func run() {
        // 메모리: 69108KB, 시간: 8ms, 코드 길이: 200B
        let input = readLine()!.split(separator: " ").map { Int(String($0))! }
        var students = readLine()!.split(separator: " ").map { Int(String($0))! }

        students.sort()
        print(students.reversed()[input[1]-1])
    }
}
