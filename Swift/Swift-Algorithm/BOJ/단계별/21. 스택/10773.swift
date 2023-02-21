//
//  10773.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/02/21.
//

// 문제: https://www.acmicpc.net/problem/10773

class BOJ10773: Solvable {
    func run() {
        // 메모리: 70668KB, 시간: 52ms, 코드 길이: 224B
        let K = Int(readLine()!)!
        var stack = [Int]()

        for _ in 0..<K {
            let number = Int(readLine()!)!

            if number == 0 {
                stack.removeLast()
            } else {
                stack.append(number)
            }
        }

        print(stack.reduce(0, +))
    }
}
