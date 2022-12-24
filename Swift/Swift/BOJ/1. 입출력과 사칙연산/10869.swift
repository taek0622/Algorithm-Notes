//
//  10869.swift
//  Swift
//
//  Created by 김민택 on 2022/05/10.
//

// 1-6단계 10869번 사칙연산

class BOJ10869 {
    func run() {
        let input = readLine()!.split(separator: " ").map {
            Int($0)!
        }

        print(input[0] + input[1])
        print(input[0] - input[1])
        print(input[0] * input[1])
        print(input[0] / input[1])
        print(input[0] % input[1])
    }
}
