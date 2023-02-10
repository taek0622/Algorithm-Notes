//
//  2753.swift
//  Swift
//
//  Created by 김민택 on 2022/05/11.
//

// 문제: https://www.acmicpc.net/problem/2753

class BOJ2753: Solvable {
    func run() {
        let input = Int(readLine()!)!

        if (input % 4 == 0 && input % 100 != 0) || input % 400 == 0 {
            print("1")
        }
        else {
            print("0")
        }
    }
}
