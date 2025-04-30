//
//  2965.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/05/03.
//

// 문제: https://www.acmicpc.net/problem/2965

class BOJ2965: Solvable {
    func run() {
        // 메모리: 69104KB, 시간: 8ms, 코드 길이: 127B
        let input = readLine()!.split(separator: " ").map { Int(String($0))! }
        print(max(input[1] - input[0], input[2] - input[1]) - 1)
    }
}
