//
//  9498.swift
//  Swift
//
//  Created by 김민택 on 2022/05/11.
//

// 문제: https://www.acmicpc.net/problem/9498

class BOJ9498 {
    func run() {
        let input = Int(readLine()!)!

        if input >= 90 {
            print("A")
        }
        else if input >= 80 {
            print("B")
        }
        else if input >= 70 {
            print("C")
        }
        else if input >= 60 {
            print("D")
        }
        else {
            print("F")
        }
    }
}
