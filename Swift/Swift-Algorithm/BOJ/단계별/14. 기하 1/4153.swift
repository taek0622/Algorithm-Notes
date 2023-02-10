//
//  4153.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/01/10.
//

// 문제: https://www.acmicpc.net/problem/4153

class BOJ4153: Solvable {
    func run() {
        // 메모리: 69108KB, 시간: 8ms, 코드 길이: 296B
        while true {
            var input = readLine()!.split(separator: " ").map { Int(String($0))! }

            if input == [0, 0, 0] {
                break
            }
            
            input.sort()

            if input[2] * input[2] == input[1] * input[1] + input[0] * input[0] {
                print("right")
            } else {
                print("wrong")
            }
        }
    }
}
