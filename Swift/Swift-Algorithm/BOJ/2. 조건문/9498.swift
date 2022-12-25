//
//  9498.swift
//  Swift
//
//  Created by 김민택 on 2022/05/11.
//

// 문제: https://www.acmicpc.net/problem/9498

class BOJ9498 {
    func run() {
        solution2()
    }

    // 메모리: 69100KB, 시간: 8ms, 코드 길이: 205B
    private func solution1() {
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

    // 메모리: 69100KB, 시간: 8ms, 코드 길이: 202B
    private func solution2() {
        let input = Int(readLine()!)!

        switch input {
        case 90...100:
            print("A")
        case 80...:
            print("B")
        case 70...:
            print("C")
        case 60...:
            print("D")
        default:
            print("F")
        }
    }
}
