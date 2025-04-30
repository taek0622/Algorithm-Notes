//
//  15996.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/08/21.
//

// 문제: https://www.acmicpc.net/problem/15996

import Foundation

class BOJ15996: Solvable {
    func run() {
        // 메모리: 69104KB, 시간: 8ms, 코드 길이: 205B
        let input = readLine()!.split(separator: " ").map { Int(String($0))! }

        var count = 0
        var number = input[1]

        while number <= input[0] {
            count += input[0] / number
            number *= input[1]
        }

        print(count)
    }
}
