//
//  2739.swift
//  Swift
//
//  Created by 김민택 on 2022/05/13.
//

// 문제: https://www.acmicpc.net/problem/2739

class BOJ2739 {
    func run() {
        let input = Int(readLine()!)!

        for i in 1...9 {
            print("\(input) * \(i) = \(i * input)")
        }
    }
}
