//
//  20363.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/08/16.
//

// 문제: https://www.acmicpc.net/problem/20363

class BOJ20363: Solvable {
    func run() {
        // 메모리: 69104KB, 시간: 8ms, 코드 길이: 107B
        let XY = readLine()!.split(separator: " ").map { Int(String($0))! }
        print(XY.reduce(0, +) + XY.min()! / 10)
    }
}
