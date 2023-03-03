//
//  10988.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/03/03.
//

// 문제: https://www.acmicpc.net/problem/10988

class BOJ10988: Solvable {
    func run() {
        // 메모리: 69096KB, 시간: 8ms, 코드 길이: 69B
        let word = readLine()!
        print(word == String(word.reversed()) ? 1 : 0)
    }
}
