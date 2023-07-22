//
//  16204.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/07/23.
//

// 문제: https://www.acmicpc.net/problem/16204

class BOJ16204: Solvable {
    func run() {
        // 메모리: 69104KB, 시간: 8ms, 코드 길이: 113B
        let input = readLine()!.split(separator: " ").map { Int(String($0))! }
        print(input[0] - abs(input[1] - input[2]))
    }
}
