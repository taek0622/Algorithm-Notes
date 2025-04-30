//
//  9494.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 11/2/24.
//

//  문제 링크: https://www.acmicpc.net/problem/9494
//  알고리즘 분류: 구현, 문자열

class BOJ9494: Solvable {
    func run() {
        // 메모리: 69104KB, 시간: 8ms, 코드 길이: 599B
        while let n = readLine(), n != "0" {
            var col = -1

            for idx in 0..<Int(n)! {
                let string = readLine()!

                if idx == 0 && string.first! == " " {
                    col = string.enumerated().filter { $0.element != " " }.map { $0.offset }.first!
                }

                let emptyOffset = string.enumerated().filter { $0.element == " " }.filter { $0.offset >= col }.map { $0.offset }

                if emptyOffset.isEmpty {
                    if col <= string.count {
                        col = string.count
                    }
                } else {
                    col = emptyOffset.first!
                }
            }

            print(col + 1)
        }
    }
}
