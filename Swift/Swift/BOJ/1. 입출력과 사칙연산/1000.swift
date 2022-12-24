//
//  1000.swift
//  Swift
//
//  Created by 김민택 on 2022/05/09.
//

// 1-2단계 1000번 A+B

class BOJ1000 {
    func run() {
        let input = readLine()!.split(separator: " ").map {
            Int(String($0))!
        }

        var result = 0

        for i in input {
            result += i
        }

        print(result)
    }
}
