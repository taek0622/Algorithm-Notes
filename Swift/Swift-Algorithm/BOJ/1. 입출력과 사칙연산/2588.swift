//
//  2588.swift
//  Swift
//
//  Created by 김민택 on 2022/05/11.
//

// 문제: https://www.acmicpc.net/problem/2588

class BOJ2588: Solvable {
    func run() {
        let input1 = Int(readLine()!)!
        let input2 = Int(readLine()!)!

        print(input1 * (input2 % 10))
        print(input1 * (input2 % 100 / 10))
        print(input1 * (input2 / 100))
        print(input1 * input2)
    }
}
