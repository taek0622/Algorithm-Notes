//
//  1001.swift
//  Swift
//
//  Created by 김민택 on 2022/05/09.
//

// 문제: https://www.acmicpc.net/problem/1001

class BOJ1001 {
    func run() {
        let input = readLine()!.split(separator: " ").map {
            Int(String($0))!
        }

        print(input[0] - input[1])
    }
}
