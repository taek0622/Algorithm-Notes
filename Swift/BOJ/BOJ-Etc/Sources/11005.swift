//
//  11005.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/03/18.
//

// 문제: https://www.acmicpc.net/problem/11005

class BOJ11005: Solvable {
    func run() {
        // 메모리: 69104KB, 시간: 8ms, 코드 길이: 129B
        let input = readLine()!.split(separator: " ").map { Int(String($0))! }

        print(String(input[0], radix: input[1], uppercase: true))
    }
}
