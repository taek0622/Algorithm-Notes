//
//  10998.swift
//  Swift
//
//  Created by 김민택 on 2022/05/10.
//

// 1-4단계 10998번 AxB

class BOJ10998 {
    func run() {
        let input = readLine()!.split(separator: " ").map {
            Int($0)!
        }

        var result = 1

        for i in input {
            result *= i
        }

        print(result)
    }
}
