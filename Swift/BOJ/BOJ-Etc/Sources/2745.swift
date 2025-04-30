//
//  2745.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/03/27.
//

// 문제: https://www.acmicpc.net/problem/2745

class BOJ2745: Solvable {
    func run() {
        // 메모리: 69104KB, 시간: 8ms, 코드 길이: 109B
        let input = readLine()!.split(separator: " ").map { String($0) }
        print(Int(input[0], radix: Int(input[1])!)!)
    }
}
