//
//  1085.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/01/10.
//

// 문제: https://www.acmicpc.net/problem/1085

class BOJ1085: Solvable {
    func run() {
        // 메모리: 69104KB, 시간: 8ms, 코드 길이: 144B
        let input = readLine()!.split(separator: " ").map { Int(String($0))! }

        print(min(input[0], input[1], input[2] - input[0], input[3] - input[1]))
    }
}
