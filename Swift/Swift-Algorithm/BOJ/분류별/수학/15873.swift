//
//  15873.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/06/27.
//

// 문제: https://www.acmicpc.net/problem/15873

class BOJ15873: Solvable {
    func run() {
        // 메모리: 69100KB, 시간: 8ms, 코드 길이: 127B
        let number = Int(readLine()!)!

        if number >= 110 {
            print(number / 100 + 10)
        } else {
            print(number / 10 + number % 10)
        }
    }
}
