//
//  1284.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/05/24.
//

// 문제: https://www.acmicpc.net/problem/1284

class BOJ1284: Solvable {
    func run() {
        // 메모리: 69096KB, 시간: 8ms, 코드 길이: 251B
        while let N = readLine(), N != "0" {
            var width = 1

            for num in N {
                if num == "0" {
                    width += 5
                } else if num == "1" {
                    width += 3
                } else {
                    width += 4
                }
            }

            print(width)
        }
    }
}
