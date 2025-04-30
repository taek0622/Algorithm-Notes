//
//  5565.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/03/08.
//

// 문제: https://www.acmicpc.net/problem/5565

class BOJ5565: Solvable {
    func run() {
        // 메모리: 69100KB, 시간: 8ms, 코드 길이: 98B
        var number = Int(readLine()!)!

        for _  in 0..<9 {
            number -= Int(readLine()!)!
        }

        print(number)
    }
}
