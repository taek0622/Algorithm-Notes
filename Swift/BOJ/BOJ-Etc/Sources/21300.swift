//
//  21300.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/06/21.
//
// 문제: https://www.acmicpc.net/problem/21300

class BOJ21300: Solvable {
    func run() {
        // 메모리: 69104KB, 시간: 8ms, 코드 길이: 100B
        let input = readLine()!.split(separator: " ").map { Int(String($0))! }.reduce(0, +)
        print(input * 5)
    }
}
