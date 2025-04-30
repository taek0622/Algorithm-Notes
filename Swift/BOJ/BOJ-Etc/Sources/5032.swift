//
//  5032.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/07/02.
//

// 문제: https://www.acmicpc.net/problem/5032

class BOJ5032: Solvable {
    func run() {
        // 메모리: 69104KB, 시간: 8ms, 코드 길이: 249B
        let input = readLine()!.split(separator: " ").map { Int(String($0))! }
        var bottles = input[0] + input[1]
        var count = 0

        while bottles >= input[2] {
            count += bottles / input[2]
            bottles = bottles / input[2] + bottles % input[2]
        }

        print(count)
    }
}
